import 'package:flutter/material.dart';
import 'package:watsapp_clone/colors.dart';
import 'package:watsapp_clone/responsive/responsive_layout.dart';
import 'package:watsapp_clone/screens/mobileScreenLayout.dart';
import 'package:watsapp_clone/screens/webScreenLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp_Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black12,
          shadowColor: Colors.black12,
        ),
      ),
      home: const ResponsiveLayout(
        mobileScreeenLayout: MobileScreenLayout(),
        webScreeenLayout: WebScreenLayout(),
      ),
    );
  }
}
