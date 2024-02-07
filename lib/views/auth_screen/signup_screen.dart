import 'package:ecommerce/common_widgets/applogo_widget.dart';
import 'package:ecommerce/common_widgets/bg_widget.dart';
import 'package:ecommerce/common_widgets/common_button.dart';
import 'package:ecommerce/common_widgets/custom_textField.dart';
import 'package:ecommerce/consts/consts.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
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
              "Signup  $appname".text.white.size(18).fontFamily(bold).make(),
              5.heightBox,
              Column(
                children: [
                  customTextField(title: name, hint: nameHint),
                  customTextField(title: email, hint: emailhint),
                  customTextField(title: password, hint: passwordhint),
                  customTextField(title: retypePassword, hint: passwordhint),
                  5.heightBox,
                  Row(
                    children: [
                      Checkbox(
                          activeColor: redColor,
                          checkColor: whiteColor,
                          value: isCheck,
                          onChanged: (newValue) {
                            setState(() {
                              isCheck = newValue;
                            });
                          }),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(
                                  fontFamily: regular, color: fontGrey)),
                          TextSpan(
                              text: termAndCond,
                              style: TextStyle(
                                  fontFamily: regular, color: redColor)),
                          TextSpan(
                              text: "  & ",
                              style: TextStyle(
                                  fontFamily: regular, color: fontGrey)),
                          TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                  fontFamily: regular, color: redColor))
                        ])),
                      )
                    ],
                  ),
                  5.heightBox,
                  ourButton(
                          color: isCheck == true ? redColor : lightGrey,
                          title: signup,
                          textColor: whiteColor,
                          onPress: () {})
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  10.heightBox,

                  // Wrapping Rich Text with Gesture Detector Velocity X
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      haveAccount.text.color(fontGrey).make(),
                      login.text
                          .color(redColor)
                          .fontFamily(bold)
                          .make()
                          .onTap(() {
                        Get.back();
                      })
                    ],
                  ),
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
