import "dart:async";

import "package:flutter/material.dart";
import "package:flutter_sizer/flutter_sizer.dart";
import "package:pattern_pro/screens/register.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int delay = 10;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: delay),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Register())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xffD3D3D3), Color(0xff48DBFB)],
          ),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.only(top: 180.dp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 300.dp,
                  height: 150.dp,
                ),
                SizedBox(
                  height: 20.dp,
                ),
                Text(
                  "Pattern Pro",
                  style:
                      TextStyle(fontSize: 24.dp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
