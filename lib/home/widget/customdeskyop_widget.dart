import 'package:flutter/material.dart';
import 'package:responsapp/home/widget/custom_contaner.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: CustomContainer()),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: CustomContainer(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
