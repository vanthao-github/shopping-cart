import 'package:get/get.dart';
import 'package:shopping_cart/modules/account/account_controller.dart';
import 'package:shopping_cart/modules/home/home_controller.dart';
import 'package:shopping_cart/modules/login/login_controller.dart';
import 'package:shopping_cart/modules/main/main_controller.dart';
import 'package:shopping_cart/modules/categories/categories_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CategoriesController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => AccountController());
  }
}
