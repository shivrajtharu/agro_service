import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:household/ui/cover_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: EasySplashScreen(
            logo: Image.asset(
              "assets/images/logo.png",
              scale: 2,
            ),
            title: Text(
              "Agro Service",
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            showLoader: true,
            durationInSeconds: 3,
            navigator: CoverPage()));
  }
}
