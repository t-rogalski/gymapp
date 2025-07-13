import 'package:flutter/material.dart';
import 'package:test_app/utils/dialog_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Create New Workout'),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      content: SizedBox(
        height: 120,
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(hintText: 'Enter workout name'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DialogButton(onPressed: onSave, text: 'Save'),
                  DialogButton(onPressed: onCancel, text: 'Cancel'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
