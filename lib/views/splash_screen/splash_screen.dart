import 'package:emart_project/common_widgets/app_logo.dart';
import 'package:emart_project/consts/colors.dart';
import 'package:emart_project/consts/consts.dart';
import 'package:emart_project/consts/images.dart';
import 'package:emart_project/views/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  //creating a method to change  screen

  void changeScreen () {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(()=> const LoginScreen());
    });

  }


  @override
  void initState() {
    super.initState();
    changeScreen(); 
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Image.asset(icSplashBg,color: whiteColor,width: 300,),
            20.heightBox,
            appLogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,
          ],
        ),
      ),
      
    );
  }
}