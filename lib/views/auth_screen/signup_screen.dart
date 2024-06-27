import 'package:emart_project/common_widgets/app_logo.dart';
import 'package:emart_project/common_widgets/bg_widgets.dart';
import 'package:emart_project/common_widgets/cuustom_textfield.dart';
import 'package:emart_project/common_widgets/our_button.dart';
import 'package:emart_project/consts/consts.dart';
import 'package:emart_project/consts/list.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            15.heightBox,
            "Sign up to $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(title: name, hint: nameHint),
                customTextField(title: email, hint: emailHint),
                customTextField(title: password, hint: passwordHints),
                customTextField(
                    title: reTypepassword, hint: reTypepasswordHint),
                // customTextField(),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgotPass.text.make())),

                5.heightBox,
                // ourButton().box.width(context.screenWidth - 120).make(),
             

                Row(
                  children: [
                    Checkbox(
                      checkColor: redColor,
                      value: false,
                      onChanged: (newValue) {},
                    ),

                    10.widthBox,
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: fontGrey,
                                )),
                            TextSpan(
                                text: termsAndCondition,
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: redColor,
                                )),

                                 TextSpan(
                                text: " & ",
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: fontGrey,
                                )),
                            TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: redColor,
                                ))
                          ],
                        ),
                      ),
                    ),
                    // style: TextStyle(
                    //   fontFamily: bold,
                    //   color: fontGrey,

                    // ))),
                  ],
                ),

                10.heightBox,

                   ourButton(
                  color: redColor,
                  title: signup,
                  titleColor: whiteColor,
                  onPress: () {},
                ).box.width(context.screenWidth - 120).make(),

                  10.heightBox,



  //wrapping into gester detector of valocityX
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: alreadyHaveAccount,
                        style: TextStyle(fontFamily: bold, color: fontGrey)
                      ),
                      TextSpan(
                        text: login,
                        style: TextStyle(fontFamily: bold, color: redColor)
                      ),
                    ]
                  ),).onTap(()=> Get.back())
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
