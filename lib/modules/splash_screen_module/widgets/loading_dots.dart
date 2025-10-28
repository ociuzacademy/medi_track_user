import 'package:flutter/material.dart';

class LoadingDots extends StatelessWidget {
  final List<Animation<double>> animations;
  final Color color;

  const LoadingDots({super.key, required this.animations, required this.color});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final dotSize = screenWidth * 0.025; // Responsive dot size

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < animations.length; i++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
            child: AnimatedDot(
              animation: animations[i],
              color: color,
              size: dotSize,
            ),
          ),
      ],
    );
  }
}

class AnimatedDot extends StatelessWidget {
  final Animation<double> animation;
  final Color color;
  final double size;

  const AnimatedDot({
    super.key,
    required this.animation,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Container(
          width: size * _getScale(animation.value),
          height: size * _getScale(animation.value),
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        );
      },
    );
  }

  double _getScale(double value) {
    // Bounce animation: 0%, 80%, 100% -> scale 0; 40% -> scale 1
    if (value < 0.4) {
      return value / 0.4; // Scale from 0 to 1
    } else if (value < 0.8) {
      return 1.0 - ((value - 0.4) / 0.4); // Scale from 1 to 0
    } else {
      return 0.0; // Remain at 0
    }
  }
}
