import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputCustom extends StatefulWidget {
  final String? hint;
  final IconData? prefixIcon;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? isHiddenText;
  final TextEditingController? controller;

  const InputCustom({
    Key? key,
    this.hint,
    this.prefixIcon,
    this.onChanged,
    this.isHiddenText = false,
    this.validator,
    this.controller,
  }) : super(key: key);

  @override
  _InputCustomState createState() => _InputCustomState();
}

class _InputCustomState extends State<InputCustom> {
  bool _isFocused = false;
  final FocusNode _focusNode = FocusNode();

  final OutlineInputBorder customBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: Colors.white,
      width: 1,
    ),
  );

  @override
  void initState() {
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
    print('xin chao ${widget.isHiddenText}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: TextFormField(
        style: TextStyle(
          color: Colors.white,
        ),
        obscureText: widget.isHiddenText ?? false,
        cursorColor: Colors.white,
        onChanged: widget.onChanged,
        validator: widget.validator,
        controller: widget.controller,
        decoration: InputDecoration(
            prefixIcon: widget.prefixIcon != null
                ? Icon(
                    widget.prefixIcon,
                    color: _isFocused ? Colors.white : Colors.grey,
                  )
                : null,
            border: customBorder,
            focusedBorder: customBorder,
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.5),
            ),
            hintText: widget.hint,
            errorStyle: GoogleFonts.inter(fontSize: 14)),
        focusNode: _focusNode,
      ),
    );
  }
}
