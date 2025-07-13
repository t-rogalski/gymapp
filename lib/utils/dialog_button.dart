import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  VoidCallback onPressed;
  final String text;

  DialogButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.blue[400],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
