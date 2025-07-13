import 'package:flutter/material.dart';
import 'package:test_app/utils/dialog_box.dart';

class WorkoutsPage extends StatefulWidget {
  const WorkoutsPage({super.key});

  @override
  State<WorkoutsPage> createState() => _WorkoutsPageState();
}

class _WorkoutsPageState extends State<WorkoutsPage> {
  final _controller = TextEditingController();

  List workouts = [];

  bool isEven(int number) {
    if (number % 2 == 0) {
      return true;
    }
    return false;
  }

  void saveNewWorkout() {
    // Logic to save the new workout
    setState(() {
      workouts.add(_controller.text);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewWorkout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewWorkout,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: isEven(index) ? Colors.blue[100] : Colors.blue[200],
            title: Text(workouts[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  workouts.removeAt(index);
                });
              },
            ),
          );
        },
      ),
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
