import 'package:api_demo/screen/home_page/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar homeAppBar() {
  return AppBar(
    title: const Text(
      "Get Api",
    ),
    centerTitle: true,
  );
}

Widget imageList() {
  return GetBuilder<HomeScreenController>(
    id: "update",
    builder: (controller) {
      return controller.imageList != null
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              itemCount: controller.imageList!.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          controller.imageList![index].thumbnailUrl!),
                    ),
                  ),
                );
              })
          : const Center(child: CircularProgressIndicator());
    },
  );
}
