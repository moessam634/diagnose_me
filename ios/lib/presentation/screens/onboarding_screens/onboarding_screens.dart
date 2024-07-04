import 'package:diagnose_me/app/app_colors.dart';
import 'package:diagnose_me/presentation/screens/intro_screen/intro_screen.dart';
import 'package:diagnose_me/presentation/screens/intro_screen/intro_screen2.dart';
import 'package:diagnose_me/presentation/screens/intro_screen/intro_screen3.dart';
import 'package:diagnose_me/presentation/screens/intro_screen/intro_screen4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController(initialPage: 0);

  int selectedScreen = 0;

  static const List<Widget> _screens = [
    IntroductionScreen1(),
    IntroductionScreen2(),
    IntroductionScreen3(),
    IntroductionScreen4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            onPageChanged: (int page) {
              setState(() {
                selectedScreen = page;
              });
            },
            itemCount: _screens.length,
            itemBuilder: (BuildContext context, int index) {
              return _screens[index];
            },
          ),
          Padding(
            padding:  EdgeInsets.only(left: 165.w,top: 471.h),
            child: Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: AppColors.kBackgroundColor,
                child: Row(
                    children: List<Widget>.generate(
                      _screens.length,
                      (index) => InkWell(
                        onTap: () {
                          pageController.animateToPage(index,
                              duration: const Duration(
                                milliseconds: 300,
                              ),
                              curve: Curves.easeIn);
                        },
                        child: CircleAvatar(
                          radius: selectedScreen == index
                              ? 4
                              : 3,
                          backgroundColor: selectedScreen == index
                              ? AppColors.kBlackColor
                              : AppColors.kGreyColor,
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
