import 'package:emart_project/common_widgets/app_logo.dart';
import 'package:emart_project/common_widgets/bg_widgets.dart';
import 'package:emart_project/common_widgets/cuustom_textfield.dart';
import 'package:emart_project/common_widgets/our_button.dart';
import 'package:emart_project/consts/consts.dart';
import 'package:emart_project/consts/list.dart';
import 'package:emart_project/views/auth_screen/signup_screen.dart';
import 'package:emart_project/views/home_screen/home.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: 
      Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            15.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,

            Column(
              children: [
                customTextField(title: email, hint: emailHint),
                customTextField(title: password, hint: passwordHints),
                // customTextField(),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgotPass.text.make())),

               5.heightBox,
            // ourButton().box.width(context.screenWidth - 120).make(),
            ourButton(
              color: redColor,
              title: login,
              titleColor: whiteColor,
              onPress: () {
                Get.to(()=> const Home());
              },
            ).box.width(context.screenWidth - 120).make(),

            5.heightBox,

            creatteNewAccount.text.color(fontGrey).make(),

            5.heightBox,

            ourButton(
              color: lightGolder,
              title: signup,
              titleColor: redColor,
              onPress: () {

                Get.to(()=> const SignupScreen());
              },
            ).box.width(context.screenWidth - 120).make(),

            10.heightBox,

            loginWith.text.color(fontGrey).make(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: lightGrey,
                          radius: 25,
                          child: Image.asset(
                            socialIconList[index],
                            width: 30,
                          ),
                        ),
                      )),
            )

              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70).shadowSm
                .make(),
           
          ],
        ),
      ),
    ));
  }
}
