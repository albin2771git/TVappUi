import 'package:flutter/material.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width * 0.35,
      height: _size.height * 0.65,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(16)),
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
          Text('')
        ],
      ),
    );
  }
}
