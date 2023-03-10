import 'package:flutter/material.dart';
import 'package:news_app/core/style/theme.dart';
import 'package:news_app/view/home_view.dart';
import 'package:news_app/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: MyTheme.lightTheme,

      debugShowCheckedModeBanner: false,

      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName :(context)=>SplashView(),
        HomeView.routeName : (context)=>HomeView(),

      },

    );
  }
}
