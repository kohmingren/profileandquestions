import 'package:flutter/material.dart';
import 'package:flutter_app_questiontest/pages/choose_location.dart';
import 'package:flutter_app_questiontest/pages/profile.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/profile',
  routes:{
    '/': (context) => ChooseLocation(),
    '/profile': (context) => Profile(),
  },
)); //MaterialApp

