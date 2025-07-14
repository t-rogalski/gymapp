import 'package:flutter/material.dart';
import 'package:test_app/utils/add_button.dart';

class PlanPage extends StatefulWidget {
  final String workoutName;
  final List<String> plan;
  final int index;

  const PlanPage({
    super.key,
    required this.workoutName,
    required this.plan,
    required this.index,
  });

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  bool isEven(int number) {
    if (number % 2 == 0) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isEven(widget.index)
            ? Colors.blue[100]
            : Colors.blue[200],
        title: Text(widget.workoutName),
      ),
      body: ListView.builder(
        itemCount: widget.plan.length,
        itemBuilder: (context, index) =>
            ListTile(title: Text(widget.plan[index])),
      ),
      floatingActionButton: AddButton(
        tooltip: 'Add Exercise',
        onPressed: () => {},
      ),
    );
  }
}
