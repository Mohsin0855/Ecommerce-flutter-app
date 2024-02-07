import 'package:ecommerce/consts/consts.dart';

Widget ourButton({onPress, color, textColor, String? title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color, padding: const EdgeInsets.all(10)),
      onPressed: onPress,
      child: title!.text.color(textColor).fontFamily(bold).make());
}
