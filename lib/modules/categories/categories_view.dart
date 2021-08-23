import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Text("Categories View"),
    ));
  }
}
