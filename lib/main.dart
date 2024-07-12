import 'package:assignment/view/pages/homepage.dart';
import 'package:assignment/view/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 8,
        shadowColor: AppColors.black.withOpacity(.15),
        surfaceTintColor: AppColors.white,
        title: const Text(
          'LOGO',
          style: TextStyle(
            color: AppColors.purple,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
      ),
      body: const SafeArea(child: HomePage()),
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.dividerColor, width: 1),
            color: AppColors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        child: BottomNavigationBar(
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/icons/home.svg',
                ),
                label: '홈'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/icons/dashboard.svg',
                ),
                label: '카테고리'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/icons/community.svg',
                ),
                label: '커뮤니티'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/icons/profile.svg',
                ),
                label: '마이페이지')
          ],
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500),
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
