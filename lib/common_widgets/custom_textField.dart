// ignore: file_names
import 'package:ecommerce/consts/consts.dart';

Widget customTextField({String? title, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.size(16).fontFamily(semibold).color(redColor).make(),
      5.heightBox,
      TextField(
        //controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: fontGrey,
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: redColor)),
        ),
      ),
      5.heightBox,
    ],
  );
}
