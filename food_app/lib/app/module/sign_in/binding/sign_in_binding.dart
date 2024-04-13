import 'package:food_app/app/module/sign_in/controllers/sign_in_controller.dart';
import 'package:get/get.dart';




class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInCOntroller>(
          () => SignInCOntroller(),
    );
  }
}