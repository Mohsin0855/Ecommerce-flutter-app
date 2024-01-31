import 'package:ecommerce/common_widgets/applogo_widget.dart';
import 'package:ecommerce/common_widgets/bg_widget.dart';
import 'package:ecommerce/consts/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogo(),
              10.heightBox,
              "Log in to $appname".text.white.size(18).fontFamily(bold).make(),
              10.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
