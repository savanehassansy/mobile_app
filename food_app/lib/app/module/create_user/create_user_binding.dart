

import 'package:food_app/app/module/create_user/create_user_controller.dart';
import 'package:get/get.dart';

class CreateUserBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<CreateUserController>(
      CreateUserController(),
    );
  }
}