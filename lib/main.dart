import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:top_top/layout/widget/homelayout.dart';
import 'package:top_top/models/home/main_food_page.dart';
import 'package:top_top/shared/styles/bloc_observer.dart';

import 'counter/counter_screen.dart';
import 'layout/widget/new_app/new_layout.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,

          ),
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,

          ),
          backgroundColor: Colors.white,
          elevation: 0.0,

        ),
        bottomNavigationBarTheme:BottomNavigationBarThemeData(
          type:BottomNavigationBarType.fixed,
        )
      ),

      home: Homelayout(),
    );
  }
}


