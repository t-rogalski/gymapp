import 'package:flutter/material.dart';
import 'package:test_app/utils/add_button.dart';
import 'package:test_app/pages/exercises_page.dart';

class PlanPage extends StatefulWidget {
  final String workoutName;
  final List<String> plan;
  final int index;
  final List<String> allExercises;

  const PlanPage({
    super.key,
    required this.workoutName,
    required this.plan,
    required this.index,
    required this.allExercises,
  });

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  void addExercise(String exercise) {
    setState(() {
      widget.plan.add(exercise);
    });
  }

  void removeExercise(int index) {
    setState(() {
      widget.plan.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final availableExercises = widget.allExercises
        .where((ex) => !widget.plan.contains(ex))
        .toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.index.isEven
            ? Colors.blue[100]
            : Colors.blue[200],
        title: Text(widget.workoutName),
      ),
      body: ListView.builder(
        itemCount: widget.plan.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(widget.plan[index]),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              removeExercise(index);
            },
          ),
        ),
      ),
      floatingActionButton: AddButton(
        tooltip: 'Add Exercise',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  Exercises(exercises: availableExercises, onTap: addExercise),
            ),
          );
        },
      ),
    );
  }
}
