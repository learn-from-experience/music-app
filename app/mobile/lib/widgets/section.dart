import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Section extends StatelessWidget {
  final Widget child;
  final String title;
  final Function? onMore;

  const Section({
    Key? key,
    required this.child,
    required this.title,
    this.onMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              Expanded(child: SizedBox.shrink()),
              if (onMore != null)
                GestureDetector(
                  onTap: () {
                    onMore!();
                  },
                  child: Text(
                    "See more",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              if (onMore != null) SizedBox(width: 24),
            ],
          ),
          SizedBox(height: 16),
          child,
        ],
      ),
    );
  }
}
