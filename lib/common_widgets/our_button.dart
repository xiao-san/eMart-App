import 'package:emart_project/consts/consts.dart';

Widget ourButton({onPress,color,String? title, titleColor}) {
  return ElevatedButton(
    onPressed: onPress,
    style: ElevatedButton.styleFrom(
        backgroundColor: color, padding: const EdgeInsets.all(12)),
    child: title!.text.color(titleColor).fontFamily(bold).make(),
  );
}
