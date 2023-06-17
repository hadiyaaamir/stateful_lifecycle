import 'package:flutter/material.dart';
import 'inherited_widget.dart';

class InheritedChild extends StatefulWidget {
  const InheritedChild({super.key});

  @override
  State<InheritedChild> createState() => _InheritedChildState();
}

class _InheritedChildState extends State<InheritedChild> {
  @override
  void initState() {
    super.initState();
    print('inherited child initState, mounted: $mounted');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('inherited child didChangeDependencies, mounted: $mounted');
  }

  @override
  void setState(VoidCallback fn) {
    print('inherited child setState');
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    print('inherited child build');
    final inheritedData = MyInheritedWidget.of(context).data;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        inheritedData,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant InheritedChild oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('inherited child didUpdateWidget, mounted: $mounted');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('inherited child deactivate, mounted: $mounted');
  }

  @override
  void dispose() {
    super.dispose();
    print('inherited child dispose, mounted: $mounted');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('inherited child reassemble, mounted: $mounted');
  }
}
