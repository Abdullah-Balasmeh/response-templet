import 'package:flutter/material.dart';
import 'package:responsapp/home/widget/TabletLayout.dart';
import 'package:responsapp/home/widget/adaptive_layout_widget.dart';
import 'package:responsapp/home/widget/disktop_layout.dart';

import 'package:responsapp/home/widget/mobile.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletlayout: (context) => Tabletlayout(),
        disktopLayout: (context) => DisktopLayout(),
      ),
    );
  }
}
