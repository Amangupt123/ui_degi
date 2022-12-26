import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ui_base_project/alltextfield/textfield.dart';
import 'package:ui_base_project/controller/logincontroller.dart';
import 'package:ui_base_project/signuppage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AuthController login = Get.put(AuthController());
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Common Ui"),
            backgroundColor: Colors.green,
          ),
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Textinput(
                textname: "Sign In",
                fontWeight: FontWeight.w600,
                fontsize: 26,
              ),
              const Textinput(
                textname: "Sign in now to cheer up you mood.",
                fontsize: 18,
              ),
              const SizedBox(
                height: 30,
              ),
              const Textinput(
                textname: "Email",
                fontWeight: FontWeight.w600,
              ),
              textfield(hintText: "Enter Your Email", controller: login.emailController),
              const Textinput(
                textname: "Password",
                fontWeight: FontWeight.w600,
              ),
              Obx(() => textfield(
                    hintText: "Enter Your Password",
                    controller: login.passwordController,
                    image: GestureDetector(
                      child: Icon(
                        login.isObscure.value ? Icons.visibility_off : Icons.visibility,
                        color: !login.isObscure.value ? Colors.orange : Colors.grey,
                      ),
                      onTap: () {
                        login.isObscure.value = !login.isObscure.value;
                      },
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              greenContainer(
                buttonName: "Sign In",
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textinput(
                    textname: "Don’t have an account?",
                    fontsize: 16,
                  ),
                  InkWell(
                    onTap: (() {
                      Get.to(SignUpScreen());
                    }),
                    child: Textinput(
                      textname: "Sign Up",
                      fontsize: 16,
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
