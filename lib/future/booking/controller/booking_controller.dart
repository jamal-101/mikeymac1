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
  final address = TextEditingController();
  RxBool isLoading = false.obs;

  Future<void> sendBookingEmail() async {
    final smtpServer = SmtpServer(
      'smtp.mail.yahoo.com',
      port: 587,
      username: 'k9ts@yahoo.com',
      password: 'kqachzxlakovdojg',
      ignoreBadCertificate: false,
      ssl: false,
      allowInsecure: false,
    );

    final message = Message()
      ..from = const Address('k9ts@yahoo.com', 'K9 Training')
      ..recipients.add('icz2456@gmail.com')
      ..subject = 'New Booking Request'
      ..text = '''
Name: ${nameController.text}
Email: ${emailController.text}
Phone: ${phoneController.text}
Address: ${address.text}
Description: ${descriptionController.text}
''';

    try {
      isLoading.value = true;

      await send(message, smtpServer);

      Get.snackbar('Success', 'Booking email sent!');
      AwesomeDialog(
        context: Get.context!,
        dialogType: DialogType.success,
        animType: AnimType.scale,
        title: 'Email sent successfully!',
        desc: 'Your booking request has been sent\nwe will contact you soon.',
        btnOkOnPress: () {
          nameController.clear();
          emailController.clear();
          phoneController.clear();
          descriptionController.clear();
          address.clear();
        },
        btnOkIcon: Icons.check_circle,
        btnOkColor: Colors.green,
      ).show();
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('Error', 'Failed to send email: $e');
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
