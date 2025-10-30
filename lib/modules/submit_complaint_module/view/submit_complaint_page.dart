// submit_complaint_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:medi_track/modules/submit_complaint_module/providers/complaint_form_provider.dart';
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

  @override
  void initState() {
    super.initState();
    _submitComplaintHelper = SubmitComplaintHelper();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ChangeNotifierProvider(
      create: (_) => ComplaintFormProvider(),
      child: Scaffold(
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
              ? const Color(0xFF0F2023)
              : const Color(0xFFF5F8F8),
          elevation: 1,
          foregroundColor: isDark
              ? const Color(0xFFE0E0E0)
              : const Color(0xFF333333),
        ),
        backgroundColor: isDark
            ? const Color(0xFF0F2023)
            : const Color(0xFFF5F8F8),
        body: Consumer<ComplaintFormProvider>(
          builder: (context, provider, _) {
            return Stack(
              children: [
                // Main Content
                SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Form(
                    key: provider.formKey,
                    child: Column(
                      children: [
                        // Form Container
                        Container(
                          constraints: const BoxConstraints(maxWidth: 400),
                          child: Column(
                            children: [
                              // Full Name Field (Read-only)
                              ReadOnlyField(
                                label: 'Full Name',
                                value: 'Jane Doe',
                              ),

                              const SizedBox(height: 16),

                              // Email or Phone Number Field (Read-only)
                              ReadOnlyField(
                                label: 'Email or Phone Number',
                                value: 'jane.doe@email.com',
                              ),

                              const SizedBox(height: 16),

                              // Complaint Category Dropdown
                              ComplaintCategoryDropdown(
                                selectedCategory: provider.selectedCategory,
                                onCategoryChanged: (category) {
                                  provider.selectedCategory = category;
                                },
                                validator: provider.validateCategory,
                              ),

                              const SizedBox(height: 16),

                              // Subject/Title Field
                              ComplaintSubjectField(
                                controller: provider.subjectController,
                                validator: provider.validateSubject,
                              ),

                              const SizedBox(height: 16),

                              // Complaint Description Text Area
                              ComplaintDescriptionField(
                                controller: provider.descriptionController,
                                validator: provider.validateDescription,
                              ),

                              const SizedBox(height: 16),

                              // Attach File Button
                              AttachFileButton(
                                onPressed: () => _submitComplaintHelper
                                    .pickImage(provider, context),
                              ),

                              // Attached Image Preview
                              provider.attachedImage != null
                                  ? Padding(
                                      padding: const EdgeInsets.only(top: 16),
                                      child: AttachedImagePreview(
                                        imageFile: provider.attachedImage!,
                                        onRemove: () => provider.removeImage(),
                                      ),
                                    )
                                  : const SizedBox.shrink(),

                              const SizedBox(height: 24),

                              // Action Buttons
                              ActionButtons(
                                onReset: () => provider.resetForm(),
                                onSubmit: () => _submitComplaintHelper
                                    .submitComplaint(provider, context),
                                isSubmitting: provider.isSubmitting,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Loading Overlay
                if (provider.isSubmitting)
                  Container(
                    color: Colors.black.withValues(alpha: 0.5),
                    child: const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xFF04798B),
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
