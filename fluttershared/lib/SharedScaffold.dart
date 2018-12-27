import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'SharedWidget.dart';

class SharedScaffold extends SharedWidget<Scaffold, CupertinoPageScaffold> {
  final String title;
  final Widget body;

  SharedScaffold({this.title, this.body});

  @override
  Scaffold createAndroidWidget(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: body,
    );
  }

  @override
  CupertinoPageScaffold createIosWidget(BuildContext context) {
    return new CupertinoPageScaffold(
      navigationBar: new CupertinoNavigationBar(
        middle: new Text(title),
      ),
      child: body,
    );
  }
}