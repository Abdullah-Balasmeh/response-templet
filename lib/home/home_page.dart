import 'package:flutter/material.dart';

import 'package:responsapp/home/widget/custom_drawer.dart';

import 'package:responsapp/home/widget/home_page_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffDBDBDB),
      appBar: MediaQuery.sizeOf(context).width - 32 <= 900
          ? AppBar(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      body: const HomeBody(),
    );
  }
}

// class CustomAdaptiveAppBar extends StatelessWidget
//     implements PreferredSizeWidget {
//   const CustomAdaptiveAppBar({
//     super.key,
//     required this.scaffoldKey,
//   });

//   final GlobalKey<ScaffoldState> scaffoldKey;

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraint) {
//         if (constraint.maxWidth <= 900) {
//           return AppBar(
//             backgroundColor: Colors.black,
//             foregroundColor: Colors.white,
//             leading: IconButton(
//                 onPressed: () {
//                   scaffoldKey.currentState!.openDrawer();
//                 },
//                 icon: const Icon(Icons.menu)),
//           );
//         } else {
//           return SizedBox();
//         }
//       },
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(56);
// }
