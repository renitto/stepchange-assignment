import 'package:get/get.dart';

import '../../../constants/app_config.dart';

class BlogController extends GetxController {
  late String url;
  RxBool isWebLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    url = AppConfig.blogUrl;
  }

  pageFinishedLoading(String url) {
    print('Page finished loading: $url');
    isWebLoading.value = false;
  }
}
