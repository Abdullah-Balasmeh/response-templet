import 'package:flutter/material.dart';
import 'package:responsapp/home/widget/TabletLayout.dart';
import 'package:responsapp/home/widget/custom_drawer.dart';
import 'package:responsapp/home/widget/customdeskyop_widget.dart';

class DisktopLayout extends StatelessWidget {
  const DisktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomDrawer(),
        Expanded(
          flex: 3,
          child: Tabletlayout(),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 4),
            child: CustomDesktopWidget(),
          ),
        ),
      ],
    );
  }
}
