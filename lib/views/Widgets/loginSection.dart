import 'package:flutter/material.dart';

class LoginSection extends StatefulWidget {
   LoginSection({Key? key}) : super(key: key);

  @override
  State<LoginSection> createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection> {
  final formKey = GlobalKey<FormState>();
   TextEditingController adNo=TextEditingController();

   TextEditingController day=TextEditingController();

   TextEditingController month=TextEditingController();

   TextEditingController year=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width * 0.35,
      height: _size.height * 0.65,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(16)),
      child: Form(
        key: formKey,
        child: ListView(
          shrinkWrap: true,
          children: [
            Text(
              "Login",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Enter Student Admission No. \n&Date Of Birth',
              style: TextStyle(
                  color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: (){},
              child: TextFormField(
                controller: adNo,
                validator: (admiNo){
                  if(admiNo==null||admiNo.isEmpty){
                    print("enter a valid admission number");
                  }
                },

                textInputAction: TextInputAction.next,
              //  keyboardType: TextInputType.none,
                decoration: InputDecoration(
                    hintText: "Admission Number",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Enter Date Of Birth",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Container(
              width: _size.width,
              height: 60,
              color: Colors.transparent,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.white)
                            //  color: Colors.grey.shade600,
                            ),
                        child: Center(
                          child: TextFormField(
                            controller: day,
                            validator: (daycheck){
                            if(  daycheck==null||daycheck.isEmpty){
                              print("enter a valid day");
                            }
                            },
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.none,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.grey.shade600,
                                hintText: "DD",
                                hintStyle: TextStyle(color: Colors.grey.shade300)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.white)
                            //  color: Colors.grey.shade600,
                            ),
                        child: Center(
                          child: TextFormField(
                            controller: month,
                            validator: (monthcheck){
                              if(  monthcheck==null||monthcheck.isEmpty){
                                print("enter a valid day");
                              }
                            },
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.none,
                            decoration: InputDecoration(
                                filled: true,
                                border: InputBorder.none,
                                fillColor: Colors.grey.shade600,
                                hintText: "MM",
                                hintStyle: TextStyle(color: Colors.grey.shade300)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.white)
                            //  color: Colors.grey.shade600,
                            ),
                        child: Center(
                          child: TextFormField(
                            controller: year,
                            validator: (yearcheck){
                              if(  yearcheck==null||yearcheck.isEmpty){
                                print("enter a valid day");
                              }
                            },
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.none,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade600,
                                border: InputBorder.none,
                                hintText: "YYYY",
                                hintStyle: TextStyle(color: Colors.grey.shade300)),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                print("submit");
                final validate=formKey.currentState!.validate();
                if(validate){
                  print("Sucess");
                }else{
                  print("failed");
                }
              },
              child: Text(
                "Submit",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}
