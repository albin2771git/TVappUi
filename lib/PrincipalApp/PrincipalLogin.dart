import 'package:app2/PrincipalApp/widgets/navBarPr.dart';
import 'package:custom_keyboard/custom_keyboard.dart';
import 'package:flutter/material.dart';

class PrincipalLogin extends StatefulWidget {
  const PrincipalLogin({Key? key}) : super(key: key);

  @override
  State<PrincipalLogin> createState() => _PrincipalLoginState();
}

class _PrincipalLoginState extends State<PrincipalLogin> {
  CKController ckController = CKController();
  TextEditingController url = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  String? inputdata;
  int textFieldindex=0;

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
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
            Positioned(
              top: 130,
              right: 70,
              child: Container(
                width: _size.width * 0.36,
                height: _size.height * 0.65,
                color: Colors.transparent,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    Text(
                      "Edisapp \nPrincipal TV.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // TextField(
                    //
                    //   keyboardType: TextInputType.none,
                    //   controller: url,
                    //   textInputAction: TextInputAction.next,
                    //   style: TextStyle(color: Colors.white),
                    //   decoration: InputDecoration(
                    //     hintText: "School Url",
                    //     hintStyle: TextStyle(color: Colors.grey.shade500),
                    //     enabledBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(color: Colors.white)),
                    //     focusedBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(color: Colors.white)),
                    //     errorBorder:
                    //     OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                    //   ),
                    // ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          textFieldindex=0;

                        });
                      },
                      child: Container(
                        width: _size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color:textFieldindex==0? Colors.white:Colors.grey.shade700),
                        borderRadius: BorderRadius.circular(9)),
                        child: Center(child: Text(url.text==""?'School url':url.text,style: TextStyle(color: Colors.white,fontSize: 15),)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(onTap: (){
                      setState(() {
                        textFieldindex=1;
                      });
                    },
                      child: Container(
                        width: _size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color:textFieldindex==1? Colors.white:Colors.grey.shade700),
                            borderRadius: BorderRadius.circular(9)),
                        child: Center(child: Text(username.text==""?'Username':username.text,style: TextStyle(color: Colors.white,fontSize: 15),)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(onTap: (){
                      setState(() {
                        textFieldindex=2;
                      });
                    },
                      child: Container(
                        width: _size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color:textFieldindex==2? Colors.white:Colors.grey.shade700),
                            borderRadius: BorderRadius.circular(9)),
                        child: Center(child: Text(password.text==""?'Password':password.text,style: TextStyle(color: Colors.white,fontSize: 15),)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff16162D),
                        ))
                  ],
                ),
              ),
            ),
            Positioned(
                left: 90,
                top: 150,
                child: Container(
                    width: _size.width * 0.30,
                    height: _size.height * 0.60,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.grey.shade600),
                        borderRadius: BorderRadius.circular(13)),
                    child: CustomKeyboard(
                      backgroundColor: Colors.transparent,
                      bottomPaddingColor: Colors.grey.withOpacity(0.3),
                      bottomPaddingHeight: 0,
                      keyboardHeight: _size.width * 0.33,
                      keyboardWidth: _size.height * 0.58,
                      onChange: (val) {
                        print('input data is ${val}');
                        setState(() {
                          if(textFieldindex==0){

                            url.text=val;

                          }else if(textFieldindex==1){

                            username.text=val;

                          }else{
                            ckController.initialValue;

                            password.text=val;

                          }
                        });
                        print(url);
                      },
                      onTapColor: Colors.grey.shade500,
                      textColor: Colors.white,
                      keybordButtonColor: Colors.transparent,
                      elevation: MaterialStateProperty.all<double>(0),
                      controller: ckController,
                    )))
          ],
        ),
      ),
    );
  }

}
