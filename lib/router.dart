import 'package:flutter/material.dart';
import 'package:watsapp_clone/common/widgets/error.dart';
import 'package:watsapp_clone/features/auth/screens/login_screen.dart';
import 'package:watsapp_clone/features/auth/screens/otp_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case OtpScreen.routename:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OtpScreen(
          verificationId: verificationId,
        ),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(
            error: 'This Page Dose Not Exsist',
          ),
        ),
      );
  }
}
