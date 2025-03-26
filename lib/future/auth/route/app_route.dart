import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/advanced_obedience.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/agility.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/behavioral.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/bitework_development.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/helper_decoy.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/igp.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/obedience.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/online_training.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/personal_protection.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/puppy_training.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/residential.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/scentwork.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/training_plans.dart';
import 'package:mikemac2/future/app_dog_service/dog_service/virtual_Video.dart';
import 'package:mikemac2/future/home/screen/widget/about_traner.dart';
import '../../app_dog_service/dog_service.dart';
import '../../home/screen/home_screen.dart';
import '../../nav_bar/bottom_navbar.dart';
import '../../onbording/presentation/screen/onbording_screen.dart';
import '../prestation/login_screen.dart';
import '../prestation/sing_up_screen.dart';


class AppRouts {
  static const String onboardingscreen = "/onboardingscreen";
  static const String loginScreen = "/loginScreen";
  static const String singUpScreen = "/singUpScreen";
  static const String homeScreen = "/homeScreen";
  static const String dogService = "/dogService";
  static const String navBar = "/navBar";
  static const String residential = "/residential";
  static const String puppytraining = "/puppytraining";
  static const String obedience = "/obedience";
  static const String behavior = "/behavior";
  static const String advancedObedience = "/advancedObedience";
  static const String personalProtection = "/personalProtection";
  static const String biteworkDevelopment = "/biteworkDevelopment";
  static const String helperDecoy = "/helperDecoy";
  static const String scentWork = "/scentWork";
  static const String agility = "/agility";
  static const String igpDogSports = "/igpDogSports";
  static const String virtualVideo = "/virtualVideo";
  static const String onlineTraining = "/onlineTraining";
  static const String aboutTrainer = "/aboutTrainer";
  static const String trainingPlans = "/trainingPlans";

  static List<GetPage> routes = [
    GetPage(name: onboardingscreen, page: () => OnbordingScreen()),
    // GetPage(name: loginScreen, page: () => LoginScreen()),
    // GetPage(name: singUpScreen, page: () => SingUpScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: dogService, page: () => DogService()),
    GetPage(name: navBar, page: () => NavigatinPage()),
    GetPage(name: residential, page: () => const Residential()),
    GetPage(name: puppytraining, page: () => const PuppyTraining()),
    GetPage(name: obedience, page: () => const Obedience()),
    GetPage(name: behavior, page: () => const Behavioral()),
    GetPage(name: advancedObedience, page: () => const AdvancedObedience()),
    GetPage(name: personalProtection, page: () => const PersonalProtection()),
    GetPage(name: biteworkDevelopment, page: () => const BiteworkDevelopment()),
    GetPage(name: helperDecoy, page: () => const HelperDecoy()),
    GetPage(name: scentWork, page: () => const Scentwork()),
    GetPage(name: scentWork, page: () => const Scentwork()),
    GetPage(name: agility, page: () => const Agility()),
    GetPage(name: igpDogSports, page: () => const IgpDogSports()),
    GetPage(name: virtualVideo, page: () => const VirtualVideo()),
    GetPage(name: virtualVideo, page: () => const VirtualVideo()),
    GetPage(name: onlineTraining, page: () => const OnlineTraining()),
    GetPage(name: aboutTrainer, page: () => const AboutTraner()),
    GetPage(name: trainingPlans, page: () => const TrainingPlans()),

  ];
}