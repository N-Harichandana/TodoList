import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/taskdata.dart';
// import 'package:todo_list/models/task.dart';
// import 'package:todo_list/screens/taskScreen.dart';
import 'package:todo_list/widgets/Tasktile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, value, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskk = value.tasks[index];
            return Tasktile(
              isChecked: taskk.isDone,
              taskTitle: taskk.name,
              checkboxcallback: (checkboxstate) {
                value.updateTask(taskk);
              },
              longpressCallback: () {
                value.deleteTask(taskk);
              },
            );
          },
          itemCount: Provider.of<TaskData>(context).taskcount,
        );
      },
    );
  }
}
