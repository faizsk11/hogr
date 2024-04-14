import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/controller/Appcontroller.dart';
import 'package:hogr/routes/AppPages.dart';
import 'package:hogr/routes/AppRoutes.dart';
import 'package:hogr/views/tab1.dart';
import 'package:hogr/views/tab2.dart';
import 'package:hogr/views/tab3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRoutes.HOME,
      getPages: AppPages.list,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (controller) {
        int initialTabIndex = int.tryParse(Get.parameters['tabIndex'] ?? '0') ??
            controller.tabIndex.value;

        return DefaultTabController(
          length: 3,
          initialIndex: initialTabIndex,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: TabBarView(
                children: [
                  Tab1View(),
                  Tab2View(),
                  Tab3View(),
                ],
              ),
            ),
            bottomNavigationBar: TabBar(
              onTap: (index) {
                controller.changeTabIndex(index);
              },
              tabs: const [
                Tab(
                  text: "Tab 1",
                ),
                Tab(
                  text: "Tab 2",
                ),
                Tab(
                  text: "Tab 3",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
