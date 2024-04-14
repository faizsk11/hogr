import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/controller/Appcontroller.dart';
import 'package:hogr/routes/AppRoutes.dart';

class Tab2View extends StatelessWidget {
  const Tab2View({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text("Page 2"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed(
                AppRoutes.TAB3LIST,
              );
            },
            child: const Text("Page 3 List View"),
          ),
        ),
      ),
    );
  }
}
