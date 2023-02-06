import 'package:flutter/material.dart';

class NavBarPri extends StatefulWidget {
 NavBarPri({Key? key}) : super(key: key);

  @override
  State<NavBarPri> createState() => _NavBarPriState();
}

class _NavBarPriState extends State<NavBarPri> {


 int index = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 35,

          decoration: BoxDecoration(
              color:index==0? Colors.white.withOpacity(
                0.3,
              ):Colors.transparent,
              borderRadius: BorderRadius.circular(14)),
          child: Center(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,

                      fontWeight: FontWeight.bold),
                )),
          ),

        ),
        Container(

          decoration: BoxDecoration(
              color:index==1? Colors.white.withOpacity(
                0.3,
              ):Colors.transparent,
              borderRadius: BorderRadius.circular(14)),
          child: Center(
            child:  TextButton(
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.white,

                      fontWeight: FontWeight.bold),
                )),
          ),

        ),
        Container(

          decoration: BoxDecoration(
              color:index==2? Colors.white.withOpacity(
                0.3,
              ):Colors.transparent,
              borderRadius: BorderRadius.circular(14)),
          child: Center(
            child:  TextButton(
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Text(
                  "School Profile",
                  style: TextStyle(
                      color: Colors.white,

                      fontWeight: FontWeight.bold),
                )),
          ),

        ),

        Container(

          decoration: BoxDecoration(
              color:index==3? Colors.white.withOpacity(
                0.3,
              ):Colors.transparent,
              borderRadius: BorderRadius.circular(14)),
          child: Center(
            child:  TextButton(
                onPressed: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Text(
                  "FAQ",
                  style: TextStyle(
                      color: Colors.white,

                      fontWeight: FontWeight.bold),
                )),
          ),

        ),





      ],
    );
  }
}
