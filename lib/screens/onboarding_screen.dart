import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: '내 물건 정보 자동 등록',
          body: '영수증만 촬영하면 자동으로 내 물건 구매 정보가 쏙!'
              '※ 영수증이 없다면 직접 입력도 가능해요',
          image: buildImage('/assets/introduction_1.png'),
          decoration: getPageDecoration()
        ),
        PageViewModel(
            title: '내 물건의 구매 이력과 품질보증기간을 기록',
            image: buildImage('/assets/introduction_2.png'),
            decoration: getPageDecoration()
        ),
        PageViewModel(
            title: '내 물건 관리에 필요한 알림 서비스',
            image: buildImage('/assets/introduction_3.png'),
            decoration: getPageDecoration()
        ),
        PageViewModel(
            title: '내 물건을 한눈에!',
            body: '내가 아끼는 물건들을 등록하고 한 눈에 통합 관리하세요!',
            image: buildImage('/assets/introduction_4.png'),
            decoration: getPageDecoration()
        ),
      ],
      done: const Text(
          '시작하기'
          , style: TextStyle(
          fontWeight: FontWeight.bold),
      ),
      onDone:(){},
    ),
  );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350,));

  PageDecoration getPageDecoration() => const PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 20),
    titlePadding: EdgeInsets.only(top: 30),
    pageColor: Colors.white,
  );

}



