import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/modules/account/account_view.dart';
import 'package:shopping_cart/modules/categories/categories_view.dart';
import 'package:shopping_cart/modules/home/home_view.dart';
import 'package:shopping_cart/modules/main/main_controller.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text("ShopA"),
        ),
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomeView(),
              CategoriesView(),
              AccountView(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_outlined), label: "Categories"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
        ),
      );
    });
  }
}
