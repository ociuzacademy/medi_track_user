// profile_page.dart
import 'package:flutter/material.dart';

import 'package:medi_track/modules/home_module/widgets/account_settings_section.dart';
import 'package:medi_track/modules/home_module/widgets/personal_info_section.dart';
import 'package:medi_track/modules/home_module/widgets/profile_header.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Profile Header
          const ProfileHeader(),

          const SizedBox(height: 16),

          // Personal Information Section
          const PersonalInfoSection(),

          const SizedBox(height: 16),

          // Account Settings Section
          const AccountSettingsSection(),
        ],
      ),
    );
  }
}
