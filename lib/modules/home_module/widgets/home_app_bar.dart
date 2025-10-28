import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/home_module/utils/home_app_bar_helper.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int currentIndex;
  final VoidCallback onProfileTap;

  const HomeAppBar({
    super.key,
    required this.currentIndex,
    required this.onProfileTap,
  });

  // Get the title based on current tab
  String get _title {
    switch (currentIndex) {
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
    switch (currentIndex) {
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
    final colorScheme = Theme.of(context).colorScheme;
    final screenSize = MediaQuery.of(context).size;

    return AppBar(
      backgroundColor: colorScheme.surface,
      elevation: 0,
      scrolledUnderElevation: 4,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Greeting and Title
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _subtitle,
                style: GoogleFonts.inter(
                  fontSize: HomeAppBarHelper.responsiveFontSize(context, 14),
                  color: colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
              Text(
                _title,
                style: GoogleFonts.inter(
                  fontSize: HomeAppBarHelper.responsiveFontSize(context, 20),
                  fontWeight: FontWeight.w700,
                  color: colorScheme.onSurface,
                ),
              ),
            ],
          ),

          // Profile Picture
          GestureDetector(
            onTap: onProfileTap,
            child: Container(
              width: screenSize.width * 0.1,
              height: screenSize.width * 0.1,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuAEb4sZMGsrUmmldqVeE01N2morjvFIgYy5WdeajLqvVT0MJSO4MpCWC9TiGJAgsds1SmoUQEHsjzdRVQ7dvGLawyb0fx5zHCXzcpUl7af72pO-h79Ow5s4JnQeQKz-6Sx7vJzFBj-p5w62RKwitKk9p3ouepbO6wcGAOKPa6AvnlvFCKQO1G0kgEAEbmgtgIeCrvcpK83wpVhDHCEq4jXebWgBfbDTLIYHWX7MzPGGGYjMjlhXY99i8kCFoTxLtvTq4SDqF7wweXuj',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
