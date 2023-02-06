
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../SecondScreen.dart';
import '../../loginWithSchoolCode.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width * 0.39,
      height: _size.height * 0.65,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Edisapp\nParent TV.",
            style: TextStyle(
                color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "The Edisapp Parent App and Portals for schools facilitates real-time access to student performance insights, daily attendance, homework, assignments, and test results.",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
         SizedBox(height: 15,),
         Container(
           width: _size.width,
           height: 45,
          decoration: BoxDecoration( color: Colors.grey.shade400.withOpacity(0.5),),
           child: Center(child: TextButton(
             onPressed: (){},
             child: Text("Get Demo",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),),
           ),),
         ),
          SizedBox(height: 6,),
          Container(
            width: _size.width,
            height: 45,
            decoration: BoxDecoration( color: Colors.grey.shade400.withOpacity(0.5),),
            child: Center(child: TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginSchoolCode()));
              },
              child: Text("Login with School Code",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),),
            ),),
          )
        ],
      ),
    );
  }
}
