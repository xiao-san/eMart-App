import 'package:emart_project/common_widgets/bg_widgets.dart';
import 'package:emart_project/consts/consts.dart';
import 'package:emart_project/consts/list.dart';
import 'package:emart_project/views/category_screren/category_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: 
      Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 200,  // height
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(categoryImages[index], width: 200, height: 120, fit: BoxFit.cover,),
                  10.heightBox,
                  categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make(),

                ],
              ).box.white.rounded.clip(Clip.antiAlias).outerShadowLg.make().onTap(() {
                Get.to(()=> CategoryDetails(title: categoriesList[index]));
              });
            },
          ),
        ),  
      ),
    );
  }
}
