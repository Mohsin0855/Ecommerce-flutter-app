import 'package:ecommerce/common_widgets/applogo_widget.dart';
import 'package:ecommerce/common_widgets/bg_widget.dart';
import 'package:ecommerce/common_widgets/common_button.dart';
import 'package:ecommerce/common_widgets/custom_textField.dart';
import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/lists.dart';
import 'package:ecommerce/views/auth_screen/signup_screen.dart';
import 'package:ecommerce/views/home_screen/home_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogo(),
              10.heightBox,
              "Log in to $appname".text.white.size(18).fontFamily(bold).make(),
              5.heightBox,
              Column(
                children: [
                  customTextField(title: email, hint: emailhint),
                  customTextField(title: password, hint: passwordhint),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () {},
                          child:
                              forgetPass.text.blue500.fontFamily(bold).make())),
                  ourButton(
                      color: redColor,
                      title: login,
                      textColor: whiteColor,
                      onPress: () {
                        Get.to(() => const HomeScreen());
                      }).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
                  createNewAccount.text.color(fontGrey).fontFamily(bold).make(),
                  5.heightBox,
                  ourButton(
                      color: redColor,
                      title: signup,
                      textColor: whiteColor,
                      onPress: () {
                        Get.to(() => const SignupScreen());
                      }).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  loginWith.text.color(fontGrey).fontFamily(bold).make(),
                  5.heightBox,
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
                  .width(context.screenWidth - 70)
                  .shadowSm
                  .make()
            ],
          ),
        ),
      ),
    );
  }
}
