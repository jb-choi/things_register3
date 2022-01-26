import 'package:flutter/material.dart';
import 'package:things_register3/screens/main_screen.dart';
    
void main() async{
  runApp(ThingsRegister());
}

class ThingsRegister extends StatelessWidget {
  const ThingsRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'things register',
     theme: ThemeData(
        primarySwatch: Colors.blue
     ),
     home: MainScreen(),
    );
  }
}

