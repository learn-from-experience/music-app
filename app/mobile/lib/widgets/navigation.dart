import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<String> navigationList = ["For you", "Relax", "Workout", "Travel"];
  int tabActive = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: navigationList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    tabActive = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                    color: tabActive == index
                        ? HexColor("#2a2a2a")
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                    child: Text(
                      navigationList[index],
                      style: GoogleFonts.inter(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
