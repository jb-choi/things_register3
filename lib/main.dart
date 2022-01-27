import 'package:flutter/material.dart';
import 'package:things_register3/screens/main_screen.dart';
import 'package:things_register3/screens/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:things_register3/util/preference_class.dart';
    
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // bool status =await SharedPreferences.getInstance().getBool('isLoggedIn');

  await UserPreferences.init();

  runApp(const ThingsRegister());
}

class ThingsRegister extends StatelessWidget {
  const ThingsRegister({Key? key}) : super(key: key);

  get isOnboardingScreenChk => UserPreferences.getOnboardingScreenChk() ?? false;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'things register',
     theme: ThemeData(
        primarySwatch: Colors.blue,
     ),
     // home: const MainScreen(),
      home: isOnboardingScreenChk ? MainScreen() : OnBoardingScreen(),
     //  home: OnBoardingScreen(),
    );
  }

}




// }
//
// //on pressed
// MySharedPreferences.instance
//     .setBooleanValue("isfirstRun", true);
//
// //main app
// class MyAppState extends State<MyApp> {
//   // This widget is the root of your application.
//
//   bool isLoggedIn = false;
//
//   MyAppState() {
//     MySharedPreferences.instance
//         .getBooleanValue("isfirstRun")
//         .then((value) => setState(() {
//       isLoggedIn = value;
//     }));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         //if true return intro screen for first time Else go to login Screen
//         home: isLoggedIn ? Login() : IntroScreen());
//   }
// }
//
