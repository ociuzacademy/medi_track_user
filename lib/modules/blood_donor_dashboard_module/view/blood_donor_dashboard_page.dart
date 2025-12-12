// [file name]: blood_donor_dashboard_page.dart
// [file content begin]
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/non_donor_dashboard.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/donor_dashboard.dart';

class BloodDonorDashboardPage extends StatefulWidget {
  const BloodDonorDashboardPage({super.key});

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (_) => const BloodDonorDashboardPage());

  @override
  State<BloodDonorDashboardPage> createState() =>
      _BloodDonorDashboardPageState();
}

class _BloodDonorDashboardPageState extends State<BloodDonorDashboardPage> {
  @override
  void initState() {
    super.initState();
    // Check if user is a donor when the page loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<IsDonorCubit>().checkIsDonor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Blood Donor Dashboard',
          style: GoogleFonts.lexend(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications
            },
          ),
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: const NetworkImage(
                'https://lh3.googleusercontent.com/aida-public/AB6AXuCofWcqgg7gKVOVBEhIF-zqj2E0bEqTYN4lcpHfXeBKdlvYS0qNYDHBw9y4J265ZIqe77wk49cStcqOy7OmwvTKsoyLEwu9Gdz6RtMBQtXDBqRVSlRsuUuK0bNOgzAbkQMFiML3vcdHRYLElwLqWdj49QIsPC_R4Wvrs0NRiAXBoMPGrsFMnTKk1-nTJV58jZJRZH2NAnSKvWQ5kwQalNQFxW_WNa_q_tvg6WaeLg35TvAzJybyXwkmiHa7SLOIqlZcLrZjwS7QOSvl',
              ),
              backgroundColor: Colors.grey[300],
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: BlocBuilder<IsDonorCubit, IsDonorState>(
        builder: (context, state) {
          return switch (state) {
            IsDonorInitial() => const Center(
              child: CircularProgressIndicator(),
            ),
            IsDonorLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            IsDonorSuccess(:final isDonor) =>
              isDonor ? const DonorDashboard() : const NonDonorDashboard(),
            IsDonorError(:final message) => Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Error loading dashboard',
                      style: GoogleFonts.lexend(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lexend(
                        fontSize: 14,
                        color: Theme.of(
                          context,
                        ).colorScheme.error.withValues(alpha: 0.8),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        context.read<IsDonorCubit>().checkIsDonor();
                      },
                      child: Text(
                        'Retry',
                        style: GoogleFonts.lexend(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          };
        },
      ),
    );
  }
}
