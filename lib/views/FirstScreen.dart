import 'package:app2/views/Widgets/keyboardWid/FirstScreenWelcome.dart';
import 'package:flutter/material.dart';

import 'Widgets/navBar.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Image? imglogo;
  @override
  void initState() {
    // TODO: implement initState
    imglogo=Image.asset("assets/images/firstScreenlogo.png");
    super.initState();
  }
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
            top: 100,
            left: 20,
            child: SizedBox(
              width: 370,
              height: 340,
              child: imglogo
            ),
          )
          ],
        ),
      ),
    );
  }
}
