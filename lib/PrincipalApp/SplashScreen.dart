
import 'dart:async';

import 'package:app2/PrincipalApp/PrincipalLogin.dart';
import 'package:app2/PrincipalApp/login2.dart';
import 'package:app2/PrincipalApp/widgets/welcomePri.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../views/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(milliseconds: 3000),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
         // PrincipalLogin()
        Login2()

      ));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: _size.width,
        height: _size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
          Color(0xff16162D),
                  Color(0xff16162D),
                  Color(0xff16162D),

          Color(0xff484862)
        ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image:AssetImage('assets/logo.png',),width: 170,),
              Lottie.asset('assets/loading.json',width: 1300,height: 60)

            ],
          ),
        ),
      ),
    );
  }
}
