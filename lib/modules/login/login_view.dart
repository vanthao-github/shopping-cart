import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/modules/register/register_view.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: controller.loginFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Text(
                  "Login",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.emailController,
                    onSaved: (value) {
                      controller.email = value!;
                    },
                    validator: (value) {
                      return controller.validateEmail(value!);
                    }),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  controller: controller.passwordController,
                  obscureText: true,
                  validator: (value) {
                    controller.validatePassword(value!);
                  },
                  onSaved: (value) {
                    controller.password = value!;
                  },
                ),
                SizedBox(height: 20),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: context.width),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurpleAccent),
                        padding: MaterialStateProperty.all(EdgeInsets.all(14))),
                    child: Text("Login"),
                    onPressed: () {
                      controller.checkLogin();
                    },
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  child: Text("Register"),
                  onTap: () {
                    Get.to(RegisterView());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
