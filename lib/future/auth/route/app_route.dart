import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/advanced_obedience.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/behavioral.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/bitework_development.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/obedience.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/personal_protection.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/puppy_training.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/residential.dart';
import 'package:mikemac2/future/profile/screen/password_screen.dart';
import 'package:mikemac2/future/profile/screen/user_profile.dart';
import '../../app_dog_service/dog_service.dart';
import '../../home/screen/home_screen.dart';
import '../../nav_bar/bottom_navbar.dart';
import '../../onbording/presentation/screen/onbording_screen.dart';
import '../prestation/confirm_password.dart';
import '../prestation/forget_password.dart';
import '../prestation/login_screen.dart';
import '../prestation/otp_screen.dart';
import '../prestation/sing_up_screen.dart';


class AppRouts {
  static const String onboardingscreen = "/onboardingscreen";
  static const String loginScreen = "/loginScreen";
  static const String singUpScreen = "/singUpScreen";
  static const String porgetpass = "/porgetpass";
  static const String otpScreen = "/otpScreen";
  static const String confirmPass = "/confirmPass";
  static const String homeScreen = "/homeScreen";
  static const String dogService = "/dogService";
  static const String navBar = "/navBar";
  static const String userProfile = "/userProfile";
  static const String password = "/password";
  static const String residential = "/residential";
  static const String puppytraining = "/puppytraining";
  static const String obedience = "/obedience";
  static const String behavior = "/behavior";
  static const String advancedObedience = "/advancedObedience";
  static const String personalProtection = "/personalProtection";
  static const String biteworkDevelopment = "/biteworkDevelopment";

  static List<GetPage> routes = [
    GetPage(name: onboardingscreen, page: () => OnbordingScreen()),
    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: singUpScreen, page: () => SingUpScreen()),
    GetPage(name: porgetpass, page: () => ForgetPassword()),
    GetPage(name: otpScreen, page: () => OtpScreen()),
    GetPage(name: confirmPass, page: () => ConfirmPassword()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: dogService, page: () => DogService()),
    GetPage(name: navBar, page: () => NavigatinPage()),
    GetPage(name: userProfile, page: () => UserProfile()),
    GetPage(name: password, page: () => PasswordScreen()),
    GetPage(name: residential, page: () => Residential()),
    GetPage(name: puppytraining, page: () => PuppyTraining()),
    GetPage(name: obedience, page: () => Obedience()),
    GetPage(name: behavior, page: () => Behavioral()),
    GetPage(name: advancedObedience, page: () => AdvancedObedience()),
    GetPage(name: personalProtection, page: () => PersonalProtection()),
    GetPage(name: biteworkDevelopment, page: () => BiteworkDevelopment()),

  ];
}