import 'package:flutter/material.dart';

class IllustrationSection extends StatelessWidget {
  const IllustrationSection({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Center(
        child: Image.network(
          'https://lh3.googleusercontent.com/aida-public/AB6AXuB9n-jPNXXWFBXlMH02bODJaYcJ9hRLj2F_DAevpNvPz-ucbEpPF1_jlcvSGWKPo-sxO_4k3yt_DIIX2iT6aZGqKHYVjPbnUwCQVboxoa4oKEZ6wHrSFkTLL_itsxXnsb1siP0o9_Rjid7T4hcl6dLcOYKpcgVaPWA6qSd4QW6sGlanqMVapI1AJRn7rZ-p1JkPE_m-T-R0T9Itw7bLBaqzxP9PYhbDunsLIX-wEXlA9dQ7AiEjEkTS0DVuc3C0f19D2eyfZldHC90M',
          width: 96,
          height: 96,
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}
