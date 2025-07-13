import 'package:flutter/material.dart';
import 'package:test_app/utils/dialog_box.dart';

class WorkoutsPage extends StatelessWidget {
  const WorkoutsPage({super.key});

  void createNewWorkout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.blue[800],
        backgroundColor: Colors.blue[400],
        tooltip: 'Add Workout',
        shape: const CircleBorder(),
        onPressed: () => createNewWorkout(context),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
