import 'dart:io';

import 'package:emart_project/consts/consts.dart';
import 'package:emart_project/controller/home_controller.dart';
import 'package:emart_project/views/cart_screen.dart/cart_screen.dart';
import 'package:emart_project/views/category_screren/category_screen.dart';
import 'package:emart_project/views/home_screen/home_screen.dart';
import 'package:emart_project/views/profile_screen/profile_screen.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(HomeController());
    
    var navBarItems = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];

    var navBody = const[
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: Obx(() => navBody.elementAt(controller.currentNavIndex.value)),
      bottomNavigationBar: Obx(
        ()=> BottomNavigationBar(
          currentIndex : controller.currentNavIndex.value,
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          items: navBarItems,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
