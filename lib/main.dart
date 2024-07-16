import 'package:finote/app_theme.dart';
import 'package:finote/routes/traveler/home.dart';
import 'package:finote/routes/traveler/passengers_info.dart';
import 'package:finote/routes/traveler/search_results.dart';
import 'package:finote/routes/traveler/seat_selection.dart';
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
      home: const  PassengersInfo(),
    );
  }
}
