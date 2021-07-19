import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/BgImg.dart';
import 'package:flutter_tutorial/drawer.dart';
import 'package:flutter_tutorial/pages/home_page.dart';
import 'package:flutter_tutorial/pages/login_page.dart';
import 'package:flutter_tutorial/utilies/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'change_name_card.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

Constants.prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    title: "Awesome App",
    home: Constants.prefs.getBool("logged In")==true?HomePage():LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
    routes:{
      '/login':(context)=>LoginPage(),
      '/home':(context)=>HomePage()
    },
  ));
}



