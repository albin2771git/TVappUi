import 'package:app2/PrincipalApp/widgets/loginSec2.dart';
import 'package:app2/PrincipalApp/widgets/navBarPr.dart';
import 'package:app2/PrincipalApp/widgets/welcomePri.dart';
import 'package:flutter/material.dart';

class Login2 extends StatelessWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
            Positioned(right: 20, top: 16, child: NavBarPri()),
          Positioned(top:130,
            left: 90,
            child: WelcomePri()),
            Positioned(
                top: 130,
                right: 90,
                child: LoginSec2()),

          ],
        ),
      ),
    );
  }
}
