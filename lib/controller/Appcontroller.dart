import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hogr/model/model.dart';

class AppController extends GetxController {
  final tabIndex = 0.obs;
  final tab3 = Tab3(items: []).obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  Future<String> loadJsonData() async {
    String jsonString = '';
    try {
      jsonString = await rootBundle.loadString('assets/data.json');
    } catch (e) {
      print('Error loading JSON data: $e');
    }
    return jsonString;
  }

  Future<void> fetchData() async {
    try {
      String jsonString = await loadJsonData();
      Map<String, dynamic> jsonData = json.decode(jsonString);
      tab3(Tab3.fromJson(jsonData));
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
