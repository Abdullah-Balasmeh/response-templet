import 'package:flutter/material.dart';
import 'package:responsapp/home/model/drawer_item_model.dart';
import 'package:responsapp/home/widget/custom_draer_item.dart';

class CustomItemListView extends StatelessWidget {
  const CustomItemListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => CustomDrawerItem(
        drawerItemModel: items[index],
      ),
    );
  }
}
