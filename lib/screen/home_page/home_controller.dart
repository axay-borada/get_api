import 'package:api_demo/screen/home_page/home_api.dart';
import 'package:get/get.dart';

import '../model/model_class.dart';

class HomeScreenController extends GetxController {
  bool hello = false;
  ImageModel? imageList;

  @override
  void onInit() {
    getImageList();
    super.onInit();
  }

  Future<void> getImageList() async {
    hello = true;
    update(['update']);
    imageList = await HomeScreenApi.getData();
    // imageList ??= [];
    hello = false;
    update(['update']);
  }
}
