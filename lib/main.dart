import 'package:flutter/material.dart';
import 'package:pattern_pro/screens/splash.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

void main() {
  runApp(const Base());
}

class Base extends StatelessWidget {
  const Base ({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (context, orientation, screenType) {
        return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Pattern Pro',
            home: SplashScreen()
        );
      },
    );
  }
}