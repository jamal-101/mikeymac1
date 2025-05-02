import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class BookingController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final descriptionController = TextEditingController();
  RxBool isLoading = false.obs;

  Future<void> sendBookingEmail() async {
    final smtpServer = SmtpServer(
      'smtp.mail.yahoo.com',
      port: 587,
      username: 'yourname@yahoo.com',
      password: 'your_generated_app_password',
      ignoreBadCertificate: false,
      ssl: false,
      allowInsecure: false,
    );

    final message = Message()
      ..from = const Address('mdsumonhossan743@yahoo.com', 'Booking App')
      ..recipients.add('sumonhossansm@gmail.com') // Destination email
      ..subject = 'New Booking Request'
      ..text = '''
Name: ${nameController.text}
Email: ${emailController.text}
Phone: ${phoneController.text}
Description: ${descriptionController.text}
''';

    try {
      isLoading.value = true;
  AwesomeDialog(
  context: Get.context!,
  dialogType: DialogType.success, // ✅ Shows checkmark animation
  animType: AnimType.scale,
  title: 'Success',
  desc: 'Email sent successfully!',
  btnOkOnPress: () {},
  btnOkIcon: Icons.check_circle,
  btnOkColor: Colors.green,
).show(); // ✅ Must call show() at the end

      await send(message, smtpServer);

      Get.snackbar('Success', 'Booking email sent!');
    } catch (e) {
      isLoading.value = false;
     
      debugPrint('-====================Error: $e');
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    descriptionController.dispose();
    super.onClose();
  }
}
