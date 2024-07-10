import 'package:flutter/material.dart';
import 'package:responsapp/home/widget/custom_sliver_list_view.dart';
import 'package:responsapp/home/widget/cutsom_list_view.dart';

class Tabletlayout extends StatelessWidget {
  const Tabletlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: SizedBox(
          height: 16,
        ),
      ),
      CustomListView(),
      CustomSliverListView(),
    ]);
  }
}
