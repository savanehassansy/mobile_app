part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  static const SIGN_IN = _Paths.SIGN_IN;
  static const SPLASH = _Paths.SPLASH;
  static const CREATE = _Paths.CREATE;
  static const PROFIL = _Paths.PROFIL;
 // static const ONBOARDING = _Paths.ONBOARDING;
}

abstract class _Paths {
  _Paths._();

  static const HOME = '/home';
  static const SIGN_IN = '/sign_in';
  static const SPLASH = '/splash';
  static const CREATE = '/create_user';
  static const PROFIL = '/profil';
  //static const ONBOARDING = '/onboarding';
}