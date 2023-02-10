import 'package:flutter/material.dart';
import 'package:household/ui/cover_page.dart';
import 'package:household/ui/login_page.dart';
import 'package:household/ui/password_reset.dart';
import 'package:household/ui/register_page.dart';
import 'package:household/widget/bottom_nav_bar.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'cover',
    routes: {
      'cover':(context)=>CoverPage(),
      'login':(context)=>LoginPage(),
      'register':(context)=>RegisterPage(),
      'home':(context)=>BotNavBar(),
      'password':(context)=>PasswordReset(),
    },
  ));
}