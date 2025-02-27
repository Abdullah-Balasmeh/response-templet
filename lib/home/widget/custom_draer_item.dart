import 'package:flutter/material.dart';
import 'package:responsapp/home/model/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        drawerItemModel.icon,
      ),
      title: Text(
        drawerItemModel.title,
        style: const TextStyle(letterSpacing: 5),
      ),
    );
  }
}
