import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../principalwelcomeScreen.dart';

class LoginSec2 extends StatelessWidget {
  LoginSec2({Key? key}) : super(key: key);
  TextEditingController urlctrl = TextEditingController();
  TextEditingController usernamectrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width * 0.30,
      height: _size.height * 0.58,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.transparent),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextFormField(
            //   controller: urlctrl,
            //   textInputAction: TextInputAction.next,
            //   style: TextStyle(color: Colors.white),
            //   validator: (urlvalue){
            //     if(urlvalue==null ||urlvalue.isEmpty){
            //       return "enter correct data";
            //     }else{
            //       print("Something went wrong");
            //     }
            //   },
            //
            //   decoration: InputDecoration(
            //     hintText: "School Url",
            //     hintStyle: TextStyle(color: Colors.grey.shade500),
            //     enabledBorder: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.white)),
            //     focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.white)),
            //     errorBorder:
            //         OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
            //   ),
            // ),
            TextFormField(
              controller: urlctrl,
              textInputAction: TextInputAction.next,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: "School Url",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
            ),SizedBox(
              height: 5,
            ),

            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: _size.width,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  final validate = _formKey.currentState!.validate();
                  if (validate) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PrincipalWelcomeScreen()));
                  }
                },
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
