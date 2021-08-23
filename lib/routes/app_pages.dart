import 'package:get/get.dart';
import 'package:shopping_cart/modules/main/main_binding.dart';
import 'package:shopping_cart/modules/main/main_view.dart';
import 'package:shopping_cart/routes/app_routes.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.MAINVIEW,
      page: () => MainView(),
      binding: MainBinding(),
    )
  ];
}
