import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        isDense: true,
        contentPadding: EdgeInsets.all(10),
      ),
    );
  }
}
