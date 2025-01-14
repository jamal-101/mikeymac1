import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // try{}catch(e){
  //   print('init faild' + e.toString());
  // }
  //
  runApp(const MyApp());
  // _init();
}
//
// _init()async{
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//   final token = preferences.getString("userID");
//   if(token != null){
//     print('token : $token');
//     Get.offAll(AppRouts.homeScreen);
//   }else{
//     Get.offAll(AppRouts.loginScreen);
//   }
// }