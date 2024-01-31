import 'package:ecommerce/consts/consts.dart';

Widget customTextField() {
  return Column(
    children: [
      email.text.size(16).fontFamily(semibold).color(redColor).make(),
      5.heightBox,
      const TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: fontGrey,
          ),
          hintText: emailhint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: redColor)),
        ),
      )
    ],
  );
}
