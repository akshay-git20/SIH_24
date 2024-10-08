import 'package:flutter/material.dart';
import 'package:sih_24/bottom_nav.dart';
import 'package:sih_24/models/disease.dart';
import 'package:sih_24/screens/disease_detail_page.dart';
import 'package:sih_24/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:UserBottomNav(),
    );
  }
}

