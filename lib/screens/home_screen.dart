import 'package:flutter/material.dart';
import 'package:things_register3/util/preference_class.dart';
import 'package:things_register3/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  get isOnboardingScreenChk => UserPreferences.getOnboardingScreenChk() ?? false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('홈', style: TextStyle(fontSize:60),
          ),
          SizedBox(
            height: 8,
          ),
          ButtonWidget(
            text: 'setOnboardingScreenChk',
            onClicked: (){
              UserPreferences.setOnboardingScreenChk();
              print(isOnboardingScreenChk);
            },
          ),
          SizedBox(
            height: 8,
          ),
          ButtonWidget(
            text: 'setOnboardingScreenChkTrue',
            onClicked: (){
              UserPreferences.setOnboardingScreenChkTrue();
              print(isOnboardingScreenChk);
            },
          ),
          SizedBox(
            height: 8,
          ),
          ButtonWidget(
            text: 'setOnboardingScreenChkFalse',
            onClicked: (){
              UserPreferences.setOnboardingScreenChkFalse();
              print(isOnboardingScreenChk);
            },
          ),
          SizedBox(
            height: 8,
          ),
          ButtonWidget(
            text: 'omg',
            onClicked: (){
              print(UserPreferences.testPreferenceNullChk());
            },
          ),
          GestureDetector(
              onTap: (){
                print(isOnboardingScreenChk);
              }
          ),
        ],
      ),
    );
  }
}


