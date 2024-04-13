import 'package:food_app/app/module/create_user/create_user_binding.dart';
import 'package:food_app/app/module/create_user/create_user_controller.dart';
import 'package:food_app/app/module/create_user/create_user_view.dart';
import 'package:food_app/app/module/home/binding/home_binding.dart';
import 'package:food_app/app/module/home/views/home_view.dart';
import 'package:food_app/app/module/profil/profil_binding.dart';
import 'package:food_app/app/module/sign_in/binding/sign_in_binding.dart';
import 'package:food_app/app/module/sign_in/views/sign_in_view.dart';
import 'package:food_app/app/module/splash/binding/splash_binging.dart';
import 'package:food_app/app/module/splash/views/splash_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding()
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding()
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding()
    ),
    GetPage(
        name: _Paths.CREATE,
        page: () => const CreateUserView(),
        binding: CreateUserBinding()
    ), GetPage(
        name: _Paths.PROFIL,
        page: () => const CreateUserView(),
        binding: ProfilBinding()
    ),
  ];
}
