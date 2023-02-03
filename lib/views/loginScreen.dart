import 'package:app2/views/Widgets/loginSection.dart';
import 'package:app2/views/Widgets/navBar.dart';
import 'package:flutter/material.dart';

import 'Widgets/keyBoard.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
              Color(0xff13005A),
              Color(0xff13005A),
              Colors.grey.shade900
            ])),
        child: Stack(
          children: [
            Positioned(
                left: 20,
                top: 15,
                child: Image(
                  image: AssetImage('assets/logo.png'),
                  width: 70,
                  height: 40,
                )),
            Positioned(right: 20, top: 16, child: NavBar()),
            Positioned(
              top: 120,
              right: 80,

              child:LoginSection(),

            ),
            Positioned(
              top: 150,
                left: 120,
                child: KeyBordSection())
          ],
        ),
      ),
    );
  }
}
