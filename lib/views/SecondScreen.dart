import 'package:app2/views/Widgets/keyboardWid/FirstScreenWelcome.dart';
import 'package:flutter/material.dart';

import 'Widgets/navBar.dart';

class ScecondScreen extends StatelessWidget {
  const ScecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: _size.width,
        height: _size.height,
        decoration: BoxDecoration(gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff16162D),
              Color(0xff16162D),
              Color(0xff16162D),

              Color(0xff484862)
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
                right: 90,
                child:WelcomeSection()),
            Positioned(
              top: 150,
              left: 30,
              child: Image(
                image: AssetImage("assets/firstScreenlogo.png",),
                width: 170,
                height: 140,
              ),
            )
          ],
        ),
      ),
    );
  }
}
