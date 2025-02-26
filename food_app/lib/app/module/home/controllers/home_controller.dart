
import 'package:food_app/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class HomeController extends GetxController {

  final getStorage = GetStorage();

  var name = "";

  @override
  void onInit(){
    super.onInit();
    //name = getStorage.read("name");
  }

  @override
  void onReady(){
    super.onReady();
  }

  @override
  void onClose(){
    super.onClose();
  }

  logout(){


      getStorage.erase();
      Get.offAllNamed(Routes.SIGN_IN);
  }

  create(){
    Get.offAllNamed(Routes.CREATE);
  }


}