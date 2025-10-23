import 'package:flutter/material.dart';
import 'package:uts_haidarjaimuladyan_2410910040026/Daftar.dart';
import 'package:uts_haidarjaimuladyan_2410910040026/Menu.dart';
import 'package:uts_haidarjaimuladyan_2410910040026/loginActivity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginActivity(),
    );
  }
}
