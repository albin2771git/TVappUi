import 'package:flutter/material.dart';

class WelcomePri extends StatelessWidget {
  const WelcomePri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width*0.45,
        height: _size.height*0.50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Login',style: TextStyle(color: Colors.grey),),
          Text(
            "Edisapp \nPrincipal TV.",
            style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
