import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:things_register3/screens/main_screen.dart';
import 'package:things_register3/widgets/button_widget.dart';
import 'dart:async';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: '내 물건 정보 자동 등록',
          body: '영수증만 촬영하면 자동으로\n내 물건 구매 정보가 쏙!\n※ 영수증이 없다면 직접 입력도 가능해요',
          image: buildImage('assets/introduction_screen/introduction_1.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
            title: '내 물건의 구매 이력과\n품질보증기간을 기록!',
            body: '',
            image: buildImage('assets/introduction_screen/introduction_2.png'),
            decoration: getPageDecoration(),
        ),
        PageViewModel(
            title: '내 물건 관리에 필요한 알림 서비스',
            body: '',
            image: buildImage('assets/introduction_screen/introduction_3.png'),
            decoration: getPageDecoration(),
        ),
        PageViewModel(
            title: '내 물건을 한눈에!',
            body: '내가 아끼는 물건들을 등록하고\n한 눈에 통합 관리하세요!',
            image: buildImage('assets/introduction_screen/introduction_4.png'),
            decoration: getPageDecoration(),
            footer: ButtonWidget(
              text: '물건 관리 시작하기!',
              onClicked: () {
                // SharedPreferences.getInstance().setBool('isOnboardingScreen',true);
                goToHome(context);
                },
            ),
        ),
      ],
      showDoneButton: false,
      // done: const Text(
      //     '시작하기'
      //     , style: TextStyle(
      //     fontSize: 22,
      //     fontWeight: FontWeight.bold),
      // ),
      // onDone:() => goToHome(context),
      showSkipButton: true,
      skip: const Text("건너뛰기"),
      onSkip: () => goToHome(context),
      next: Icon(Icons.arrow_forward),
      showNextButton: true,
      dotsDecorator: getDotDecoration(),
    ),
  );

  void goToHome(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => MainScreen()),
  );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350,));

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: Color(0xFFBDBDBD),
    //activeColor: Colors.orange,
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  PageDecoration getPageDecoration() => const PageDecoration(
    titleTextStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 20),
    titlePadding: EdgeInsets.all(30),
    imagePadding: EdgeInsets.only(top: 30),
    pageColor: Colors.white,
  );

}



