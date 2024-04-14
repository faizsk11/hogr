import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/controller/Appcontroller.dart';

class Tab3View extends StatelessWidget {
  const Tab3View({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text("Page 3"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
           DefaultTabController.of(context).animateTo(0);
            },
            child: Text("Page 1"),
          ),
        ),
      ),
    );
  }
}

