import 'package:flutter/material.dart';

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
  final _exerciseController = TextEditingController();

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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.plan.length,
              itemBuilder: (context, index) =>
                  ListTile(title: Text(widget.plan[index])),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _exerciseController,
                    decoration: InputDecoration(hintText: 'Add exercise'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    if (_exerciseController.text.trim().isNotEmpty) {
                      setState(() {
                        widget.plan.add(_exerciseController.text.trim());
                        _exerciseController.clear();
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
