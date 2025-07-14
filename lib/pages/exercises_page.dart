import 'package:flutter/material.dart';

class Exercises extends StatefulWidget {
  final List<String> exercises;
  final Function(String) onTap;

  Exercises({super.key, required this.exercises, required this.onTap});

  @override
  State<Exercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Choose an Exercise')),
      body: ListView.builder(
        itemCount: widget.exercises.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(widget.exercises[index]),
          onTap: () {
            widget.onTap(widget.exercises[index]);
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
