import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:myapp1/main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: '히오스를 아직 하는 유인원',
          body: '우기끽1',
          image: Image.asset('image/onboarding_page1.png'),
          decoration: getpageDecoration()
        ),
        PageViewModel(
          title: '히오스를 아직 하는 유인원',
          body: '우기끽2',
          image: Image.asset('image/onboarding_page2.png'),
          decoration: getpageDecoration()
        ),
        PageViewModel(
          title: '히오스를 아직 하는 유인원',
          body: '우기끽3',
          image: Image.asset('image/onboarding_page3.png'),
          decoration: getpageDecoration()
        ),
        
        
      ],
      done: const Text('Done'),
      onDone: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Grade()),
        );
      }, // onpress 와 비슷한느낌
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('Skip'),
      dotsDecorator: DotsDecorator(
        color: Colors.white,
        size: const Size(10,10),
        activeSize: const Size(20.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        activeColor: Colors.cyan,
      ),// 하단의 페이지 순서 시각화 도트 데코레이션
    );// 소개 페이지 스크린
  }


  PageDecoration getpageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28, 
        fontWeight: FontWeight.bold
        ),
      bodyTextStyle: TextStyle(
        fontSize: 19,
        color: Colors.black
        ),
        imagePadding: EdgeInsets.only(top: 100),
        pageColor: Colors.blueGrey
    );
  }
}