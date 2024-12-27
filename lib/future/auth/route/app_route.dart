import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../app_service/dog_service.dart';
import '../../home/screen/home_screen.dart';
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

  static List<GetPage> routes = [
    GetPage(name: onboardingscreen, page: () => OnbordingScreen()),
    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: singUpScreen, page: () => SingUpScreen()),
    GetPage(name: porgetpass, page: () => ForgetPassword()),
    GetPage(name: otpScreen, page: () => OtpScreen()),
    GetPage(name: confirmPass, page: () => ConfirmPassword()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: dogService, page: () => DogService()),

  ];
}