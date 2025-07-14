import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final String tooltip;
  VoidCallback onPressed;

  AddButton({super.key, required this.onPressed, required this.tooltip});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      hoverColor: Colors.blue[800],
      backgroundColor: Colors.blue[400],
      tooltip: tooltip,
      shape: const CircleBorder(),
      onPressed: onPressed,
      child: Icon(Icons.add, color: Colors.white),
    );
  }
}
