import 'package:flutter/material.dart';
import 'package:habit_tracker_flutter/constants/text_styles.dart';
import 'package:habit_tracker_flutter/models/task.dart';
import 'package:habit_tracker_flutter/ui/task/animated_task.dart';
import 'package:habit_tracker_flutter/ui/theming/app_theme.dart';

class TaskWithName extends StatelessWidget {
  const TaskWithName({Key? key, required this.task}) : super(key: key);
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
          ),
          child: AnimatedTask(
            iconName: task.iconName,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          task.name.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyles.taskName.copyWith(
            color: AppTheme.of(context).accent,
          ),
        )
      ],
    );
  }
}
