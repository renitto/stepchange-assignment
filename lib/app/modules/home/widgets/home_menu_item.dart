import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../themes/app_text_theme.dart';

class HomeMenuItem extends StatelessWidget {
  final String title;
  final IconData iconPath;
  final onTap;

  const HomeMenuItem(
      {Key? key, required this.title, this.onTap, required this.iconPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: Get.width,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      iconPath,
                      size: 30,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      title,
                      style: menuTitleTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        onTap: onTap);
  }
}
