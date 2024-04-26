import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxcallback;
  final void Function() longpressCallback;
  Tasktile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxcallback,
      required this.longpressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longpressCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(value: isChecked, onChanged: checkboxcallback));
  }
}
