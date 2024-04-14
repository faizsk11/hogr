import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/controller/Appcontroller.dart';
import 'package:hogr/routes/AppRoutes.dart';

class Tab1View extends StatelessWidget {
  const Tab1View({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                title: Text("Page 1"),
              ),
              body: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.HOME,
                        parameters: {'tabIndex': '1'},
                        preventDuplicates: false);
                  },
                  child: Text("Page 2"),
                ),
              ),
            ));
  }
}
