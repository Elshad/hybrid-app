import 'package:flutter/material.dart';
import 'dart:io' show Platform;

abstract class SharedWidget<A extends Widget, I extends Widget> extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(Platform.isAndroid) {
      return createAndroidWidget(context);
    }
    else if (Platform.isIOS) {
      return createIosWidget(context);
    }
    // platform not supported returns an empty widget
    return new Container();
  }

  A createAndroidWidget(BuildContext context);

  I createIosWidget(BuildContext context);
}