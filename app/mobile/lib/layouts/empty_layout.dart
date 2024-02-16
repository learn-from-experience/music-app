import 'package:flutter/material.dart';

class EmptyLayout extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  const EmptyLayout({
    Key? key,
    required this.child,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: padding,
          height: double.infinity,
          color: Colors.black,
          child: child,
        ),
      ),
    );
  }
}
