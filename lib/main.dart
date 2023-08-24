import 'package:flutter/material.dart';
import 'package:whatsapp_pvt/Screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Color(0xff075e55)),
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0))
      ),
      routes: {
        "/": (context) => const HomePage(),
      },
    );
  }
}