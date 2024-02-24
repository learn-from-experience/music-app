import 'package:flutter/material.dart';
import 'package:mobile/widgets/header.dart';

class HomeLayout extends StatelessWidget {
  final Widget child;

  const HomeLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: null,
        body: Container(
          padding: EdgeInsets.only(
            top: 16,
            bottom: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
