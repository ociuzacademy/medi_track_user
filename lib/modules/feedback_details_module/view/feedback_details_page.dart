import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_urls.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/custom_error_widget.dart';
import 'package:medi_track/modules/feedback_details_module/utils/feedback_details_helper.dart';
import 'package:medi_track/modules/feedback_details_module/widgets/doctor_info_card.dart';
import 'package:medi_track/modules/feedback_details_module/widgets/feedback_details_card.dart';

class FeedbackDetailsPage extends StatefulWidget {
  final int feedbackId;
  const FeedbackDetailsPage({super.key, required this.feedbackId});

  static MaterialPageRoute route({required int feedbackId}) =>
      MaterialPageRoute(
        builder: (_) => FeedbackDetailsPage(feedbackId: feedbackId),
      );

  @override
  State<FeedbackDetailsPage> createState() => _FeedbackDetailsPageState();
}

class _FeedbackDetailsPageState extends State<FeedbackDetailsPage> {
  late final FeedbackDetailsHelper _feedbackDetailsHelper;
  @override
  void initState() {
    super.initState();
    _feedbackDetailsHelper = FeedbackDetailsHelper(
      feedbackId: widget.feedbackId,
      context: context,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _feedbackDetailsHelper.feedbackDetailsInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Feedback Details',
          style: GoogleFonts.lexend(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.015,
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark
            ? const Color(0xFF101f22)
            : const Color(0xFFF5F7FA),
        elevation: 1,
      ),
      backgroundColor: isDark
          ? const Color(0xFF101f22)
          : const Color(0xFFF5F7FA),
      body: BlocBuilder<FeedbackDetailsCubit, FeedbackDetailsState>(
        builder: (context, state) {
          switch (state) {
            case FeedbackDetailsLoading _:
              return const Center(child: CircularProgressIndicator());
            case FeedbackDetailsError(:final message):
              return CustomErrorWidget(
                errorMessage: message,
                isDark: isDark,
                onRetry: _feedbackDetailsHelper.feedbackDetailsInit,
              );
            case FeedbackDetailsSuccess(:final data):
              return Column(
                children: [
                  // Main Content
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          // Doctor Info Card
                          DoctorInfoCard(
                            doctorName: data.appointment.doctor.name,
                            specialty: data.appointment.doctor.specialization,
                            appointmentDate: data.appointment.date,
                            imageUrl:
                                '${AppUrls.baseUrl}/${data.appointment.doctor.image}',
                          ),

                          const SizedBox(height: 16),

                          // Feedback Details Card
                          FeedbackDetailsCard(
                            overallRating: data.feedback.starRating,
                            doctorInteraction:
                                data.feedback.doctorInteractionRating,
                            waitingExperience:
                                data.feedback.hospitalServiceRating,
                            submissionDate: data.feedback.submittedOn,
                            feedbackText: data.feedback.comments,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
