import 'package:api_demo/screen/home_page/home_controller.dart';
import 'package:api_demo/screen/home_page/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiDemo extends StatelessWidget {
  const ApiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return Scaffold(
      appBar: homeAppBar(),
      body: imageList(),
      // floatingActionButton: floatingactionButtonAdd(),
    );
  }
}
