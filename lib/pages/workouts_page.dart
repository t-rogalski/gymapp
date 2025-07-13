import 'package:flutter/material.dart';
import 'package:test_app/utils/dialog_box.dart';
import 'package:test_app/utils/workout.dart';

class WorkoutsPage extends StatefulWidget {
  const WorkoutsPage({super.key});

  @override
  State<WorkoutsPage> createState() => _WorkoutsPageState();
}

class _WorkoutsPageState extends State<WorkoutsPage> {
  final _controller = TextEditingController();

  List workouts = [];

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
      body: workouts.isEmpty
          ? Center(child: Text('Add some workouts!'))
          : ListView.builder(
              itemCount: workouts.length,
              itemBuilder: (context, index) {
                return Workout(
                  name: workouts[index],
                  index: index,
                  workouts: workouts,
                  onDelete: () {
                    final deletedName = workouts[index];
                    setState(() {
                      workouts.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Deleted $deletedName'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
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
