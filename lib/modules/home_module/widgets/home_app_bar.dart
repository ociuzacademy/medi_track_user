import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/core/constants/app_urls.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/home_module/utils/home_app_bar_helper.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  final int currentIndex;
  final VoidCallback onProfileTap;

  const HomeAppBar({
    super.key,
    required this.currentIndex,
    required this.onProfileTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  late final HomeAppBarHelper _homeAppBarHelper;

  @override
  void initState() {
    super.initState();
    _homeAppBarHelper = HomeAppBarHelper(context: context);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _homeAppBarHelper.userProfileInit();
    });
  }

  // Get the title based on current tab
  String get _title {
    switch (widget.currentIndex) {
      case 0:
        return 'MediTrack';
      case 1:
        return 'Profile';
      default:
        return 'MediTrack';
    }
  }

  // Get the subtitle based on current tab
  String get _subtitle {
    switch (widget.currentIndex) {
      case 0:
        return 'Hello, Sarah';
      case 1:
        return 'Your account';
      default:
        return 'Hello, Sarah';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return AppBar(
      backgroundColor: AppColors.surface(context),
      elevation: 0,
      scrolledUnderElevation: 4,
      title: BlocBuilder<UserProfileCubit, UserProfileState>(
        builder: (context, state) {
          final String userName = switch (state) {
            UserProfileSuccess(:final userProfile) =>
              'Hello, ${userProfile.username}',
            _ => _subtitle,
          };

          final String? userImage = switch (state) {
            UserProfileSuccess(:final userProfile) =>
              '${AppUrls.baseUrl}${userProfile.image}',
            _ => null,
          };

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Greeting and Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: GoogleFonts.inter(
                      fontSize: _homeAppBarHelper.responsiveFontSize(14),
                      color: AppColors.textPrimary(
                        context,
                      ).withValues(alpha: 0.6),
                    ),
                  ),
                  Text(
                    _title,
                    style: GoogleFonts.inter(
                      fontSize: _homeAppBarHelper.responsiveFontSize(20),
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary(context),
                    ),
                  ),
                ],
              ),

              // Profile Picture
              GestureDetector(
                onTap: widget.onProfileTap,
                child: Container(
                  width: screenSize.width * 0.1,
                  height: screenSize.width * 0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: userImage != null
                          ? CachedNetworkImageProvider(userImage)
                          : const NetworkImage(
                                  'https://lh3.googleusercontent.com/aida-public/AB6AXuAEb4sZMGsrUmmldqVeE01N2morjvFIgYy5WdeajLqvVT0MJSO4MpCWC9TiGJAgsds1SmoUQEHsjzdRVQ7dvGLawyb0fx5zHCXzcpUl7af72pO-h79Ow5s4JnQeQKz-6Sx7vJzFBj-p5w62RKwitKk9p3ouepbO6wcGAOKPa6AvnlvFCKQO1G0kgEAEbmgtgIeCrvcpK83wpVhDHCEq4jXebWgBfbDTLIYHWX7MzPGGGYjMjlhXY99i8kCFoTxLtvTq4SDqF7wweXuj',
                                )
                                as ImageProvider,
                      fit: BoxFit.cover,
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
