import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news_app/view/home/home_view.dart';

class SplashView extends StatefulWidget {
    static const String routeName = 'intinal';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration (seconds:2),() {
      Navigator.of(context).pushReplacementNamed(HomeView.routeName);
    }
    );    super.initState();
  }
  @override
  Widget build(BuildContext context) {

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
