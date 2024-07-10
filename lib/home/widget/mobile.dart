import 'package:flutter/material.dart';
import 'package:responsapp/home/widget/custom_grid_view.dart';
import 'package:responsapp/home/widget/custom_sliver_list_view.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: SizedBox(
          height: 16,
        ),
      ),
      CustomGridView(),
      CustomSliverListView(),
    ]);
  }
}
