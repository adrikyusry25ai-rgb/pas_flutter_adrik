
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/login_model.dart';
import 'package:flutter_application_1/PAS/pages/models/pas_login_model.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class PasLoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  var loginModel = Rxn<PasLoginModel>();


  void login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("error", "ussername dan password harus di isi");
    } else {
      try {
        isLoading.value = true;
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(
          url,
          body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        isLoading.value = false;
        if (response.statusCode == 200) {
          loginModel.value = PasLoginModel.fromJson(jsonDecode(response.body));

          if (loginModel.value?.status == true) {
            Get.snackbar("success", loginModel.value?.message ?? "");
            Get.offAllNamed(Routes.pasMenuDrawerpage);
          } else {
            Get.snackbar("error", loginModel.value?.message ?? "");
          }
        } else {
          Get.snackbar("error", "cek koneksi internet anda");
        }
      } catch (e) {
        Get.snackbar("gagal", e.toString());
      }
    }
  }
}
