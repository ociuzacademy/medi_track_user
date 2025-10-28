// submit_complaint_page.dart
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/submit_complaint_module/utils/submit_complaint_helper.dart';

import 'package:medi_track/modules/submit_complaint_module/widgets/action_buttons.dart';
import 'package:medi_track/modules/submit_complaint_module/widgets/attach_file_button.dart';
import 'package:medi_track/modules/submit_complaint_module/widgets/attached_image_preview.dart';
import 'package:medi_track/modules/submit_complaint_module/widgets/complaint_category_dropdown.dart';
import 'package:medi_track/modules/submit_complaint_module/widgets/complaint_description_field.dart';
import 'package:medi_track/modules/submit_complaint_module/widgets/complaint_subject_field.dart';
import 'package:medi_track/modules/submit_complaint_module/widgets/read_only_field.dart';

class SubmitComplaintPage extends StatefulWidget {
  const SubmitComplaintPage({super.key});

  static Route route() =>
      MaterialPageRoute(builder: (_) => const SubmitComplaintPage());

  @override
  State<SubmitComplaintPage> createState() => _SubmitComplaintPageState();
}

class _SubmitComplaintPageState extends State<SubmitComplaintPage> {
  late final SubmitComplaintHelper _submitComplaintHelper;

  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  // ValueNotifiers for state management
  final ValueNotifier<String?> _selectedCategory = ValueNotifier<String?>(null);
  final ValueNotifier<File?> _attachedImage = ValueNotifier<File?>(null);
  final ValueNotifier<bool> _isSubmitting = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _submitComplaintHelper = SubmitComplaintHelper(
      context: context,
      subjectController: _subjectController,
      descriptionController: _descriptionController,
      selectedCategory: _selectedCategory,
      attachedImage: _attachedImage,
      isSubmitting: _isSubmitting,
    );
  }

  @override
  void dispose() {
    _subjectController.dispose();
    _descriptionController.dispose();
    _selectedCategory.dispose();
    _attachedImage.dispose();
    _isSubmitting.dispose();
    super.dispose();
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
          'Submit Complaint',
          style: GoogleFonts.lexend(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.015,
            color: isDark ? const Color(0xFFE0E0E0) : const Color(0xFF333333),
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark
            ? const Color(0xFF211111)
            : const Color(0xFFf8f6f6),
        elevation: 1,
        foregroundColor: isDark
            ? const Color(0xFFE0E0E0)
            : const Color(0xFF333333),
      ),
      backgroundColor: isDark
          ? const Color(0xFF211111)
          : const Color(0xFFf8f6f6),
      body: ValueListenableBuilder<bool>(
        valueListenable: _isSubmitting,
        builder: (context, isSubmitting, _) {
          return Stack(
            children: [
              // Main Content
              SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Form Container
                    Container(
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: Column(
                        children: [
                          // Full Name Field (Read-only)
                          ReadOnlyField(label: 'Full Name', value: 'Jane Doe'),

                          const SizedBox(height: 16),

                          // Email or Phone Number Field (Read-only)
                          ReadOnlyField(
                            label: 'Email or Phone Number',
                            value: 'jane.doe@email.com',
                          ),

                          const SizedBox(height: 16),

                          // Complaint Category Dropdown
                          ValueListenableBuilder<String?>(
                            valueListenable: _selectedCategory,
                            builder: (context, selectedCategory, _) {
                              return ComplaintCategoryDropdown(
                                selectedCategory: selectedCategory,
                                onCategoryChanged: (category) {
                                  _selectedCategory.value = category;
                                },
                              );
                            },
                          ),

                          const SizedBox(height: 16),

                          // Subject/Title Field
                          ComplaintSubjectField(controller: _subjectController),

                          const SizedBox(height: 16),

                          // Complaint Description Text Area
                          ComplaintDescriptionField(
                            controller: _descriptionController,
                          ),

                          const SizedBox(height: 16),

                          // Attach File Button
                          AttachFileButton(
                            onPressed: _submitComplaintHelper.pickImage,
                          ),

                          // Attached Image Preview
                          ValueListenableBuilder<File?>(
                            valueListenable: _attachedImage,
                            builder: (context, attachedImage, _) {
                              return attachedImage != null
                                  ? Padding(
                                      padding: const EdgeInsets.only(top: 16),
                                      child: AttachedImagePreview(
                                        imageFile: attachedImage,
                                        onRemove:
                                            _submitComplaintHelper.removeImage,
                                      ),
                                    )
                                  : const SizedBox.shrink();
                            },
                          ),

                          const SizedBox(height: 24),

                          // Action Buttons
                          ActionButtons(
                            onReset: _submitComplaintHelper.resetForm,
                            onSubmit: _submitComplaintHelper.submitComplaint,
                            isSubmitting: isSubmitting,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Loading Overlay
              if (isSubmitting)
                Container(
                  color: Colors.black.withValues(alpha: 0.5),
                  child: const Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xFFea2a33),
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
