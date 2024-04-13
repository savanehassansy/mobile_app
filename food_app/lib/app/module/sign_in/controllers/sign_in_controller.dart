import 'package:flutter/material.dart';
import 'package:food_app/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class SignInCOntroller extends GetxController {

  final getStorage = GetStorage();

  @override
  void onInit(){
    super.onInit();
  }

  @override
  void onReady(){
    super.onReady();
  }

  @override
  void onClose(){
    super.onClose();
  }

  sign_in(){
    //getStorage.write("id", 1);
    //getStorage.write("name", "sushi game");
    Get.offAllNamed(Routes.HOME);
  }

}