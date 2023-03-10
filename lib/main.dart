import 'package:flutter/material.dart';

void main() {
  runApp(const KidoboticsApp());
}

class KidoboticsApp extends StatelessWidget {
  const KidoboticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kidobotics",
    );
  }
}
