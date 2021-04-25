import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_to_do/models/task_data.dart';
import 'package:what_to_do/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      //consume the TaskData
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskIndex = taskData.tasks[index];
            return TaskTile(
              taskTitle: taskIndex.name,
              isChecked: taskIndex.isDone,
              checkBoxCallBack: (bool checkBoxState) {
                taskData.updateTask(taskIndex);
              },
              longPressCallBack: () {
                taskData.deleteTask(taskIndex);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Deleted ${taskIndex.name}'),
                ));
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
