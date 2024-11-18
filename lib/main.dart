import 'package:flutter/material.dart';
import 'package:tonghop_assets/pages/home_pages.dart';
import 'pages/lading_pages.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LadingPages(),
    );
  }
}
