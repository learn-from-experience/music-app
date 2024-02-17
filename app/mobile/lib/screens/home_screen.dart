import 'package:flutter/material.dart';
import 'package:mobile/layouts/empty_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EmptyLayout(
      child: Container(
        child: Text("Home Screen"),
      ),
    );
  }
}
