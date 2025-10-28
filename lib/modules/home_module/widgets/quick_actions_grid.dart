import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/home_module/helper/quick_actions_grid_data.dart';
import 'package:medi_track/modules/home_module/utils/quick_actions_grid_helper.dart';
import 'package:medi_track/modules/home_module/widgets/quick_action_item.dart';

class QuickActionsGrid extends StatelessWidget {
  const QuickActionsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final screenSize = MediaQuery.of(context).size;
    final quickActions = QuickActionsGridData.getQuickActions(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Title
        Text(
          'Quick Actions',
          style: GoogleFonts.inter(
            fontSize: QuickActionsGridHelper.responsiveFontSize(context, 18),
            fontWeight: FontWeight.w700,
            color: colorScheme.onSurface,
          ),
        ),
        SizedBox(height: screenSize.height * 0.015),

        // Grid
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: QuickActionsGridHelper.getCrossAxisCount(context),
            crossAxisSpacing: screenSize.width * 0.03,
            mainAxisSpacing: screenSize.height * 0.015,
            childAspectRatio: QuickActionsGridHelper.getChildAspectRatio(
              context,
            ),
          ),
          itemCount: quickActions.length,
          itemBuilder: (context, index) {
            final action = quickActions[index];
            return QuickActionItem(
              icon: action.icon,
              title: action.title,
              isPrimary: action.isPrimary,
              colorScheme: colorScheme,
              onTap: () {
                debugPrint('Tapped: ${action.title}');
                action.onClick();
              },
            );
          },
        ),
      ],
    );
  }
}
