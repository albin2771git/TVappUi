import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class KeyBordSection extends StatefulWidget {
  KeyBordSection({Key? key}) : super(key: key);

  @override
  State<KeyBordSection> createState() => _KeyBordSectionState();
}

class _KeyBordSectionState extends State<KeyBordSection> {
 bool hover=false;
  TextEditingController adNo=TextEditingController();

  TextEditingController day=TextEditingController();

  TextEditingController month=TextEditingController();

  TextEditingController year=TextEditingController();



  @override
  Widget build(BuildContext context) {

    final _size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(15),
        width: _size.width * 0.20,
        height: _size.height * 0.49,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white)),
        child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              //mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(onTap: (){},child: Container(width: 24,height: 24,color:hover==true ?Colors.grey:Colors.transparent, child: Center(child: Text("a",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("b",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("c",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("d",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("e",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("f",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
              ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

               //mainAxisSize: MainAxisSize.min,
               children: [
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("g",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("h",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("i",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("j",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("k",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("l",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),

               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

               //mainAxisSize: MainAxisSize.min,
               children: [
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("m",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("n",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("o",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("p",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("q",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("r",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),

               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

               //mainAxisSize: MainAxisSize.min,
               children: [
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("s",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("t",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("u",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("v",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("w",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("x",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),

               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

               //mainAxisSize: MainAxisSize.min,
               children: [
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("y",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("z",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("2",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("3",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("4",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),

               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

               //mainAxisSize: MainAxisSize.min,
               children: [
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("5",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("6",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("7",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("8",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("9",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),
                 InkWell(onTap: (){},child: Container(width: 24,height: 24,color: Colors.transparent, child: Center(child: Text("0",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))),

               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

               //mainAxisSize: MainAxisSize.min,
               children: [
                 InkWell(onTap: (){},child: Container(width: 34,height: 24,color: Colors.transparent, child: Center(child: Text("CLEAR",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 9),)))),
                 InkWell(onTap: (){},child: Container(width: 34,height: 24,color: Colors.transparent, child: Center(child: Text("SPACE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 9),)))),
                 InkWell(onTap: (){},child: Container(width: 34,height: 24,color: Colors.transparent, child: Center(child: Text("BACK",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 9),)))),


               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

               //mainAxisSize: MainAxisSize.min,
               children: [
                 InkWell(onTap: (){},child: Container(width: 34,height: 24,color: Colors.transparent, child: Center(child: Text("ABC",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 9),)))),
                 InkWell(onTap: (){},child: Container(width: 34,height: 24,color: Colors.transparent, child: Center(child: Text("abc",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 9),)))),
                 InkWell(onTap: (){},child: Container(width: 34,height: 24,color: Colors.transparent, child: Center(child: Text("*/@",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 9),)))),


               ],
             ),
           )
         ],
        )
        );
  }

}
