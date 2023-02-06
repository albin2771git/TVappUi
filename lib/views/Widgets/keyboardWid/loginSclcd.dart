import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginSchlcd extends StatelessWidget {
  const LoginSchlcd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  _size=MediaQuery.of(context).size;
    return Container(
      width: _size.width * 0.39,
      height: _size.height * 0.65,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Login",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
          Text("Use Your School Code \nTo Login",style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25
          ),),
          SizedBox(height: 15,),
          Container(
            width: _size.width,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400)
            ),
          ),
          SizedBox(height: 15,),
        //   ElevatedButton(onPressed: (){}, child: Text(''))
        ],
      ),
    );
  }
}
