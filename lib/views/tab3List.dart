import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/controller/Appcontroller.dart';

class Tab3ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Get.back();
              },
            ),
            title: Text('Tab 3'),
          ),
          body: Obx(() {
            if (controller.tab3.value.items.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                itemCount: controller.tab3.value.items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(controller.tab3.value.items[index]),
                  );
                },
              );
            }
          }),
        );
      },
    );
  }
}
