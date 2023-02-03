import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeyBordSection extends StatelessWidget {
  const KeyBordSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width * 0.25,
      height: _size.height * 0.50,
      decoration: BoxDecoration(
        color: Colors.transparent,

          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child:Text("")
        ),
      ),
    );
  }
}
