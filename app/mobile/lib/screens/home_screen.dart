import 'package:flutter/material.dart';
import 'package:mobile/layouts/home_layout.dart';
import 'package:mobile/widgets/navigation.dart';
import 'package:mobile/widgets/section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeLayout(
      child: Padding(
        padding: EdgeInsets.only(left: 24, top: 16),
        child: Column(children: [
          Navigation(),
          SizedBox(height: 24),
          Section(
            title: "Featuring Today",
            child: Container(),
          ),
          Section(
            title: "Recently Played",
            child: Container(),
            onMore: () {
              print("see more");
            },
          ),
          Section(
            title: "Mixes for you",
            child: Container(),
          ),
        ]),
      ),
    );
  }
}
