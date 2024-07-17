import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:finote/app_theme.dart';
import 'package:finote/routes/traveler/home.dart';
import 'package:finote/routes/traveler/login.dart';
import 'package:finote/routes/traveler/passengers_info.dart';
import 'package:finote/routes/traveler/payment.dart';
import 'package:finote/routes/traveler/register.dart';
import 'package:finote/routes/traveler/search_results.dart';
import 'package:finote/routes/traveler/seat_selection.dart';
import 'package:finote/routes/traveler/tickets.dart';
import 'package:finote/routes/traveler/trip_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finote',
      theme: appTheme,

      // splash screen
      home: AnimatedSplashScreen(
          splash: "assets/images/logo_orange.png",
          curve: Curves.easeInOut,
          splashIconSize: 256,
          nextScreen:  TicketScreen(),
          splashTransition: SplashTransition.scaleTransition),
    );
  }
}
