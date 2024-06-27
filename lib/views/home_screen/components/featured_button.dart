import 'package:emart_project/consts/consts.dart';

Widget featuredButton({String? title, icon, onPress}) {
  return Row(
    children: [
      Image.asset(icon,width: 60,fit: BoxFit.fill,),
      10.widthBox, 
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),

    ],
  ).box.width(200).white.padding(const EdgeInsets.all(4)).margin(const EdgeInsets.symmetric(horizontal: 4, vertical: 1)).roundedSM.outerShadowSm.make();
}