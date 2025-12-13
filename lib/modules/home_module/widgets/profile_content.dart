// profile_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/constants/app_urls.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/custom_error_widget.dart';
import 'package:medi_track/modules/home_module/utils/profile_content_helper.dart';

import 'package:medi_track/modules/home_module/widgets/account_settings_section.dart';
import 'package:medi_track/modules/home_module/widgets/personal_info_section.dart';
import 'package:medi_track/modules/home_module/widgets/profile_header.dart';

class ProfileContent extends StatefulWidget {
  const ProfileContent({super.key});

  @override
  State<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  late final ProfileContentHelper _profileContentHelper;

  @override
  void initState() {
    super.initState();
    _profileContentHelper = ProfileContentHelper(context: context);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _profileContentHelper.userProfileInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return BlocBuilder<UserProfileCubit, UserProfileState>(
      builder: (context, state) {
        return switch (state) {
          UserProfileInitial() => const Center(
            child: CircularProgressIndicator(),
          ),
          UserProfileLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
          UserProfileError(:final message) => CustomErrorWidget(
            errorMessage: message,
            isDark: isDark,
            onRetry: _profileContentHelper.userProfileInit,
          ),
          UserProfileSuccess(:final userProfile) => SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Profile Header
                ProfileHeader(
                  name: userProfile.username,
                  imageUrl: '${AppUrls.baseUrl}${userProfile.image}',
                ),

                const SizedBox(height: 16),

                // Personal Information Section
                PersonalInfoSection(
                  name: userProfile.username,
                  dob: userProfile.birthDate,
                  gender: userProfile.gender,
                  phoneNumber: userProfile.phone,
                  email: userProfile.email,
                  bloodGroup: userProfile.bloodGroup,
                  address: userProfile.address,
                ),

                const SizedBox(height: 16),

                // Account Settings Section
                const AccountSettingsSection(),
              ],
            ),
          ),
        };
      },
    );
  }
}
