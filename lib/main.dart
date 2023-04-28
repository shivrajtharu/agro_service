import 'package:flutter/material.dart';
import 'package:household/plots/plots_owners_page.dart';
import 'package:household/machines/machine_owners_page.dart';
import 'package:household/splash_screen.dart';
import 'package:household/ui/account_types.dart';
import 'package:household/ui/cover_page.dart';
import 'package:household/ui/login_page.dart';
import 'package:household/ui/password_reset.dart';
import 'package:household/ui/farmer_register_page.dart';
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
      'accountType':(context)=>AccountTypePage(),
      'register':(context)=>FarmerRegisterPage(),
      'home':(context)=>BotNavBar(),
      'password':(context)=>PasswordReset(),
      'farmer':(context)=>FarmerPage(),
      'machine owner':(context)=>MachineOwners(),
      'plot owner':(context)=>PlotOwners(),
      'fertilizer owner':(context)=>FertilizerOwnersPage(),
    },
  ));
}