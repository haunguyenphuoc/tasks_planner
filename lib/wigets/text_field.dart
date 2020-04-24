import 'package:flutter/material.dart';

class TextField2 extends StatelessWidget {
  final String label;
  final Icon icon;
  final int maxLines;
  final int minLines;

  TextField2({this.label, this.icon, this.maxLines = 1, this.minLines = 1});

  @override
  Widget build(BuildContext context) => TextField(
        style: TextStyle(color: Colors.black54),
        minLines: minLines,
        maxLines: maxLines,
        decoration: InputDecoration(
          suffixIcon: icon != null ? icon : null,
          labelText: label,
          labelStyle: TextStyle(color: Colors.black54),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black54),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black54),
          ),
        ),
      );
}
