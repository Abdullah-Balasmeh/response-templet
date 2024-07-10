import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletlayout,
    required this.disktopLayout,
  });
  final WidgetBuilder mobileLayout, tabletlayout, disktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return mobileLayout(context);
        } else if (constraints.maxWidth <= 900) {
          return tabletlayout(context);
        } else {
          return disktopLayout(context);
        }
      },
    );
  }
}
