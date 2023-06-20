// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'inherited_child.dart';
import 'inherited_widget.dart';

class InheritedParent extends StatefulWidget {
  const InheritedParent({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<InheritedParent> createState() {
    print('create state');
    return _InheritedParentState();
  }
}

class _InheritedParentState extends State<InheritedParent> {
  String parentData = 'Hello, world!';

  _InheritedParentState() {
    print('constructor, mounted: $mounted');
  }

  void updateParentData() {
    setState(() {
      parentData = 'Updated data';
    });
  }

  @override
  void initState() {
    super.initState();
    print('inherited parent initState, mounted: $mounted');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('inherited parent didChangeDependencies, mounted: $mounted');
  }

  @override
  void setState(VoidCallback fn) {
    print('inherited parent setState');
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    print('inherited parent build');

    return Column(
      children: [
        MyInheritedWidget(
          data: parentData,
          child: const InheritedChild(),
        ),
        ElevatedButton(
          onPressed: updateParentData,
          child: const Text('Update Parent Data'),
        ),
      ],
    );
  }

  @override
  void didUpdateWidget(covariant InheritedParent oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('inherited parent didUpdateWidget, mounted: $mounted');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('inherited parent deactivate, mounted: $mounted');
  }

  @override
  void dispose() {
    super.dispose();
    print('inherited parent dispose, mounted: $mounted');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('inherited parent reassemble, mounted: $mounted');
  }
}
