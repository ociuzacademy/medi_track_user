// attached_image_preview.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class AttachedImagePreview extends StatelessWidget {
  final File imageFile;
  final VoidCallback onRemove;

  const AttachedImagePreview({
    super.key,
    required this.imageFile,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF2A1A1A) : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isDark ? const Color(0xFF443333) : AppColors.textSecondaryDark,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Attached Image',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: isDark
                      ? AppColors.textSecondaryDark
                      : AppColors.textSecondaryLight,
                ),
              ),
              IconButton(
                onPressed: onRemove,
                icon: const Icon(
                  Icons.close,
                  color: Color(0xFF04798B),
                  size: 20,
                ),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(minWidth: 40, minHeight: 40),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.file(
              imageFile,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 200,
                  color: isDark
                      ? const Color(0xFF443333)
                      : const Color(0xFFF5F5F5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: isDark
                            ? const Color(0xFFA08F8F)
                            : AppColors.textTertiaryLight,
                        size: 48,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Failed to load image',
                        style: GoogleFonts.lexend(
                          fontSize: 14,
                          color: isDark
                              ? const Color(0xFFA08F8F)
                              : AppColors.textTertiaryLight,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'File: ${imageFile.path.split('/').last}',
            style: GoogleFonts.lexend(
              fontSize: 12,
              color: isDark ? const Color(0xFFA08F8F) : AppColors.textTertiaryLight,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
