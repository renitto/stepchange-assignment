import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../widgets/circular_progress_indicator_with_loading_text.dart';
import '../controllers/blog_controller.dart';

class BlogView extends GetView<BlogController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog'),
        centerTitle: true,
      ),
      body: Obx(() => Stack(children: [
            WebView(
              initialUrl: controller.url,
              debuggingEnabled: true,
              javascriptMode: JavascriptMode.unrestricted,
              allowsInlineMediaPlayback: true,
              gestureNavigationEnabled: true,
              zoomEnabled: true,
              onPageFinished: (String url) {
                controller.pageFinishedLoading(url);
              },
            ),
            Visibility(
                visible: controller.isWebLoading.value,
                child: const Center(
                  child: CircularProgressIndicatorWithLoadingText(
                      loadingText: 'Loading blog content. Please wait'),
                )),
          ])),
    );
  }
}
