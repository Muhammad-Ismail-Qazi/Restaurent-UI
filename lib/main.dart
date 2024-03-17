import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui/view/Booking_details.dart';
import 'package:ui/view/onboarding1.dart';
import 'package:ui/view/profile.dart';
import 'package:ui/view/reservation_details.dart';

import 'deals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.fallback(),
          home: const Profile(),
        );
      },

    );

  }
}