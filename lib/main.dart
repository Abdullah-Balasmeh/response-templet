import 'package:flutter/material.dart';
import 'package:responsapp/home/home_page.dart';

void main() {
  runApp(const ResponseApp());
}

class ResponseApp extends StatelessWidget {
  const ResponseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
