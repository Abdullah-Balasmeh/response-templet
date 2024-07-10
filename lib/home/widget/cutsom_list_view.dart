import 'package:flutter/material.dart';
import 'package:responsapp/home/widget/custom_contaner.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 50,
            itemBuilder: (context, index) {
              return const AspectRatio(
                  aspectRatio: 1,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: CustomContainer(),
                  ));
            }),
      ),
    );
  }
}
