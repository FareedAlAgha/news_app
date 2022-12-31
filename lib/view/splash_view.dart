import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news_app/view/home_view.dart';

class SplashView extends StatelessWidget {
    static const String routeName = 'intinal';

  @override
  Widget build(BuildContext context) {
    Timer(Duration (seconds:2),() {
      Navigator.of(context).pushReplacementNamed(HomeView.routeName);
    }
    );
    return Stack(
      children: [
        Container(
          color: Colors.black,
          child: Image.asset("assets/images/bussines.png",
          width: double.infinity,
          height: double.infinity,
            fit : BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(),
        )
      ],
    );
  }
}
