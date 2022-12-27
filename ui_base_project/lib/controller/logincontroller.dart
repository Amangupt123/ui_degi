import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController dropdownController = TextEditingController();
  RxBool isObscure = true.obs;
  RxString? selectedValue;
  DateTime selectedDate = DateTime.now();
  DateTime userDateOfBirth = DateTime.now();
}
