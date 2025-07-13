import 'package:flutter/material.dart';

class Workout extends StatelessWidget {
  final String name;
  final int index;
  final List workouts;
  VoidCallback onDelete;

  Workout({
    super.key,
    required this.name,
    required this.index,
    required this.workouts,
    required this.onDelete,
  });

  bool isEven(int number) {
    if (number % 2 == 0) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: isEven(index) ? Colors.blue[100] : Colors.blue[200],
      title: Text(name),
      onTap: () {
        // Logic to handle tap on workout
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Tapped on ${workouts[index]}'),
            duration: Duration(seconds: 1),
          ),
        );
      },
      trailing: IconButton(icon: Icon(Icons.delete), onPressed: onDelete),
    );
  }
}
