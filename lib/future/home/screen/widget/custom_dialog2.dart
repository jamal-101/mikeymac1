import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDialog {
  void showContactDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      barrierColor: const Color.fromARGB(255, 77, 77, 77),
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () async {
                  final Uri phoneUri =
                      Uri(scheme: 'tel', path: "+4407496013382");
                  if (await canLaunchUrl(phoneUri)) {
                    await launchUrl(phoneUri,
                        mode: LaunchMode.externalApplication);
                  } else {
                    debugPrint("Cannot launch phone dialer");
                  }
                },
                child: Container(
                  height: 40.h,
                  width: Get.width * .8,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 1.w, color: Colors.black87)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.phone,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Text(
                          "Call : +4407496013382",
                          style: TextStyle(color: Color(0xFF111827)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () async {
                  final Uri emailUri =
                      Uri(scheme: 'mailto', path: "k9ts@yahoo.com");
                  if (await canLaunchUrl(emailUri)) {
                    await launchUrl(emailUri,
                        mode: LaunchMode.externalApplication);
                  } else {
                    debugPrint("Cannot open email app");
                  }
                },
                child: Container(
                  height: 40.h,
                  width: Get.width * .8,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 1.w, color: Colors.black87)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.email,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Text(
                          "Email : k9ts@yahoo.com",
                          style: TextStyle(
                            color: Color(0xFF111827),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
