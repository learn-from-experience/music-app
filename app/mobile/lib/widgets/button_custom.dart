import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCustom extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color borderColor;
  final double? borderRadius;
  final double? borderWidth;
  final TextStyle? textStyleCustom;
  final Widget? icon;
  final VoidCallback onPressed;

  const ButtonCustom({
    Key? key,
    required this.text,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.borderRadius = 100,
    this.textStyleCustom,
    this.borderWidth,
    this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
            side: BorderSide(
              color: borderColor,
              width: borderWidth ?? 0.0,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
        ),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(child: icon),
                  SizedBox(width: 8.0),
                  Text(
                    text,
                    style: GoogleFonts.inter(
                      textStyle: textStyleCustom,
                    ),
                  ),
                ],
              )
            : Text(
                text,
                style: GoogleFonts.inter(textStyle: textStyleCustom),
              ),
      ),
    );
  }
}
