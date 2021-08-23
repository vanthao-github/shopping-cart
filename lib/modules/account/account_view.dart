import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/modules/account/account_controller.dart';

class AccountView extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Account View"),
      ),
    );
  }
}
