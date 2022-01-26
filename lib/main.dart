import 'package:flutter/material.dart';
import 'package:things_register3/screens/main_screen.dart';
import 'package:things_register3/screens/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
    
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // bool status =await SharedPreferences.getInstance().getBool('isLoggedIn');

  runApp(const ThingsRegister());
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
     // home: const MainScreen(),
      home: OnBoardingScreen(),
    );
  }
}

