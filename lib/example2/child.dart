import 'package:flutter/material.dart';

class Child extends StatefulWidget {
  const Child({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<Child> createState() => _ChildState();
}

class _ChildState extends State<Child> {
  @override
  void initState() {
    super.initState();
    print('child initState, mounted: $mounted');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('child didChangeDependencies, mounted: $mounted');
  }

  @override
  void setState(VoidCallback fn) {
    print('child setState');
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    print('child build method');
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'child: ${widget.text}',
            style: const TextStyle(fontSize: 20),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: const Text('Update from child')),
      ],
    );
  }

  @override
  void didUpdateWidget(covariant Child oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('child didUpdateWidget, mounted: $mounted');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('child deactivate, mounted: $mounted');
  }

  @override
  void dispose() {
    super.dispose();
    print('child dispose, mounted: $mounted');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('child reassemble, mounted: $mounted');
  }
}
