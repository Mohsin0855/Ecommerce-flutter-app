import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/controller/home_cotroller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeCotroller());

    var navBarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];

    var navBody = [
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.purple,
      ),
      Container(
        color: Colors.amber,
      ),
      Container(
        color: Colors.cyan,
      ),
    ];

    return Scaffold(
      body: Column(children: [
        Obx(
          () => Expanded(
            child: navBody.elementAt(controller.currentNavIndex.value),
          ), // Use controller.currentNavIndex.value as the index for navBody
        ),
      ]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          items: navBarItem,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentNavIndex
              .value, // Set the currentIndex based on the currentNavIndex variable
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
