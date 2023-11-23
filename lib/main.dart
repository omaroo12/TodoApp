import 'package:bloc/bloc.dart';
import 'package:firstproj/modules/bmi/result_screen.dart';
import 'package:firstproj/modules/users/users_Screen.dart';
import 'package:firstproj/shared/blocObserver.dart';
import 'package:flutter/material.dart';

import 'layout/homeLayOout.dart';
import 'modules/bmi/BMI_screen.dart';
import 'modules/counter/CounterScreen.dart';
import 'modules/home/Home_Screen.dart';
import 'modules/login/LoginScreen.dart';
import 'modules/messanger/messanger_screen.dart';

void main() {
  runApp(const MyApp());
   Bloc.observer=SimpleBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: HomeLayOut(),
    );
  }
}

