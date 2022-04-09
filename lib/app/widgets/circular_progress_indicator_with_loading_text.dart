import 'package:flutter/material.dart';

import '../themes/app_text_theme.dart';

class CircularProgressIndicatorWithLoadingText extends StatelessWidget {
  final String? loadingText;

  const CircularProgressIndicatorWithLoadingText({Key? key, this.loadingText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(),
        SizedBox(height: 15),
        Center(
          child: Text(
            loadingText != null ? loadingText! : 'Loading Data. Please wait.',
            style: thinLabelTextStyle,
          ),
        ),
      ],
    );
  }
}
