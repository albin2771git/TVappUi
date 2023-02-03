
import 'package:app2/views/SplashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Shortcuts(
    shortcuts: <LogicalKeySet, Intent>{
      LogicalKeySet(LogicalKeyboardKey.select): ActivateIntent()
    },
    child: MaterialApp(theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
      home: SplashScreen(),
    ),
  ));
}
