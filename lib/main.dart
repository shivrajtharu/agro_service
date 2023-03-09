import 'package:flutter/material.dart';
import 'package:household/plots/plots_owners_page.dart';
import 'package:household/machines/machine_owners_page.dart';
import 'package:household/splash_screen.dart';
import 'package:household/ui/cover_page.dart';
import 'package:household/ui/login_page.dart';
import 'package:household/ui/login_types.dart';
import 'package:household/ui/password_reset.dart';
import 'package:household/ui/register_page.dart';
import 'package:household/widget/bottom_nav_bar.dart';
import 'farmers/farmer_page.dart';
import 'fertilizers/fertilizer_owners_page.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash',
    routes: {
      'splash':(context)=>SplashScreen(),
      'cover':(context)=>CoverPage(),
      'login':(context)=>LoginPage(),
      'loginType':(context)=>LoginTypePage(),
      'register':(context)=>RegisterPage(),
      'home':(context)=>BotNavBar(),
      'password':(context)=>PasswordReset(),
      'farmer':(context)=>Farmer(),
      'machine owner':(context)=>MachineOwnersPage(),
      'plot owner':(context)=>PlotsOwnersPage(),
      'fertilizer owner':(context)=>FertilizerOwnersPage(),
    },
  ));
}