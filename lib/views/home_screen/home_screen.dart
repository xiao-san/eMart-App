import 'package:emart_project/common_widgets/home_button.dart';
import 'package:emart_project/consts/colors.dart';
import 'package:emart_project/consts/consts.dart';
import 'package:emart_project/consts/list.dart';
import 'package:emart_project/views/home_screen/components/featured_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
        color: lightGrey,
        width: context.screenWidth,
        height: context.screenHeight,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 60,
                // padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                color: lightGrey,
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: whiteColor,
                      hintStyle: TextStyle(color: textfieldGrey)),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      //Swaper Brands

                      VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: silderList.length,
                        itemBuilder: (context, index) => Container(
                          child: Image.asset(
                            silderList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make(),
                        ),
                      ),

                      10.heightBox,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          2,
                          (index) => homeButtons(
                            height: context.screenHeight * 0.15,
                            width: context.screenWidth / 2.5,
                            icon: index == 0 ? icTodaysDeal : icFlashDeal,
                            title: index == 0 ? todayDeal : flashSale,
                            // onPressed: () {},
                          ),
                        ),
                      ),

                      10.heightBox,

                      VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: socondSilderList.length,
                        itemBuilder: (context, index) => Container(
                          child: Image.asset(
                            socondSilderList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make(),
                        ),
                      ),

                      10.heightBox,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          3,
                          (index) => homeButtons(
                            height: context.screenHeight * 0.14,
                            width: context.screenWidth / 3.5,
                            icon: index == 0
                                ? icTopCategories
                                : index == 1
                                    ? icBrands
                                    : icTopSeller,
                            title: index == 0
                                ? topCategory
                                : index == 1
                                    ? brand
                                    : topSellers,
                            // onPressed: () {},
                          ),
                        ),
                      ),

                      20.heightBox,
                      Align(
                              alignment: Alignment.centerLeft,
                              child: featuredCategories.text
                                  .size(18)
                                  .color(darkFontGrey)
                                  .fontFamily(semibold)
                                  .make())
                          .box
                          .padding(const EdgeInsets.only(left: 15))
                          .make(),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            3,
                            (index) => Column(
                              children: [
                                featuredButton(
                                    icon: featuredImages1[index],
                                    title: featuredTitles1[index]),
                                10.heightBox,
                                featuredButton(
                                    icon: featuredImages2[index],
                                    title: featuredTitles2[index]),
                              ],
                            ),
                          ).toList(),
                        ),
                      ),

                      20.heightBox,


                      // features products

                      Container(
                        // height: context.screenHeight/1.5,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.all(12),
                        decoration:const BoxDecoration(
                          color: redColor
                            // image: DecorationImage(

                            //     image: AssetImage(
                            //       imgBackground,
                            //     ),
                            //     fit: BoxFit.fill, )),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            featuredProduct.text
                                .fontFamily(bold)
                                .color(whiteColor)
                                .size(18)
                                .make(),
                            10.heightBox,
                            SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  6,
                                  (index) => Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(imgP1,width: 150,fit: BoxFit.cover,),
                              
                                      10.heightBox,
                              
                                      "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                              
                                      10.heightBox,
                              
                                      "\600".text.color(redColor).fontFamily(bold).size(16).make(),
                                    ],
                                  ).box.white.roundedSM.padding(const EdgeInsets.all(8)).margin(const EdgeInsets.symmetric(horizontal: 4)).make(),
                                ),
                              ),
                            )
                          ],
                        ),
                        
                      ),

                      20.heightBox,
                        //vsSwiper
                        VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: socondSilderList.length,
                        itemBuilder: (context, index) => Container(
                          child: Image.asset(
                            socondSilderList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make(),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
