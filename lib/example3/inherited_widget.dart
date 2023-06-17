import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final String data;

  const MyInheritedWidget({
    required this.data,
    required Widget child,
    Key? key,
  }) : super(key: key, child: child);

  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    bool update = data != oldWidget.data;
    print('updateShouldNotify called. Update: $update');
    return update;
  }
}
