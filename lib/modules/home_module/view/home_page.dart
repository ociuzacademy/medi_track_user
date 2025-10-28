import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/loaders/overlay_loader.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/home_module/widgets/bottom_navigation.dart';
import 'package:medi_track/modules/home_module/widgets/home_app_bar.dart';
import 'package:medi_track/modules/home_module/widgets/home_content.dart';
import 'package:medi_track/modules/home_module/widgets/profile_content.dart';
import 'package:medi_track/modules/login_module/view/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  static route() => MaterialPageRoute(builder: (_) => HomePage());
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Different content for each tab
  final List<Widget> _tabContents = [
    const HomeContent(),
    const ProfileContent(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: HomeAppBar(
        currentIndex: _selectedIndex,
        onProfileTap: () {
          // Handle profile tap
        },
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          switch (state) {
            case AuthLoading _:
              OverlayLoader.show(context, message: 'Logging out...');
              break;
            case AuthError(:final errorMessage):
              OverlayLoader.hide();
              CustomSnackbar.showError(context, message: errorMessage);
              break;
            case LogoutSuccess _:
              OverlayLoader.hide();
              CustomSnackbar.showSuccess(
                context,
                message: 'User logged out successfully.',
              );
              Navigator.pushAndRemoveUntil(
                context,
                LoginPage.route(),
                (_) => false,
              );
              break;
            default:
              OverlayLoader.hide();
              break;
          }
        },
        child: _tabContents[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
