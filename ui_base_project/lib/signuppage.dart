import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:ui_base_project/alltextfield/textfield.dart';
import 'package:ui_base_project/controller/logincontroller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final AuthController login = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Textinput(
              textname: "Join Us",
              fontWeight: FontWeight.w600,
              fontsize: 26,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 0, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "SignUp Now",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Textinput(
              textname: "Email",
              fontWeight: FontWeight.w600,
            ),
            textfield(hintText: "Enter Your Email", controller: login.emailController),
            Textinput(
              textname: "Name",
              fontWeight: FontWeight.w600,
            ),
            textfield(hintText: "Enter Your Name", controller: login.nameController),
            Textinput(
              textname: "Date of Birth",
              fontWeight: FontWeight.w600,
            ),
            textfield(
              hintText: "Enter Your Name",
              controller: login.dobController,
              image: InkWell(
                child: SvgPicture.asset(
                  "assets/calender.svg",
                  fit: BoxFit.scaleDown,
                ),
                onTap: (() {
                  selectDate(context);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
