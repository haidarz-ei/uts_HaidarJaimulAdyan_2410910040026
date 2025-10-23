import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginActivity.dart';
import 'package:uts_haidarjaimuladyan_2410910040026/loginActivity.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginActivity(),
    );
  } 
}