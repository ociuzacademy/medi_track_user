import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/custom_error_widget.dart';
import 'package:medi_track/modules/feedback_list_module/utils/feedback_list_helper.dart';
import 'package:medi_track/modules/feedback_list_module/widgets/feedback_card.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class FeedbackListPage extends StatefulWidget {
  const FeedbackListPage({super.key});

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (_) => const FeedbackListPage());

  @override
  State<FeedbackListPage> createState() => _FeedbackListPageState();
}

class _FeedbackListPageState extends State<FeedbackListPage> {
  late final FeedbackListHelper _feedbackListHelper;
  @override
  void initState() {
    super.initState();
    _feedbackListHelper = FeedbackListHelper(context: context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _feedbackListHelper.feedbakListInitial();
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
          'My Feedback',
          style: GoogleFonts.lexend(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.015,
            color: isDark ? Colors.white : AppColors.textPrimaryLight,
          ),
        ),
        backgroundColor: isDark
            ? AppColors.backgroundDark
            : const Color(0xFFF6F8F8),
        elevation: 0,
      ),
      backgroundColor: isDark
          ? AppColors.backgroundDark
          : const Color(0xFFF6F8F8),
      body: BlocBuilder<FeedbackListCubit, FeedbackListState>(
        builder: (context, state) {
          switch (state) {
            case FeedbackListLoading _:
              return const Center(child: CircularProgressIndicator());
            case FeedbackListError(message: final message):
              return CustomErrorWidget(
                errorMessage: message,
                isDark: isDark,
                onRetry: _feedbackListHelper.feedbakListInitial,
              );
            case FeedbackListSuccess(userFeedbackList: final userFeedbackList):
              return SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Subtitle
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        'View and manage your feedback for past appointments.',
                        style: GoogleFonts.lexend(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: isDark
                              ? AppColors.textTertiaryDark
                              : AppColors.textTertiaryLight,
                        ),
                      ),
                    ),

                    // Feedback List
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: userFeedbackList.feedback.length,
                      itemBuilder: (context, index) {
                        return FeedbackCard(
                          feedback: userFeedbackList.feedback[index],
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                    ),
                  ],
                ),
              );
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
