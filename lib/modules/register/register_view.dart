import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/modules/register/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Register View"),
      ),
    );
  }
}
