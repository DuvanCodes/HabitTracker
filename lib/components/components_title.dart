import 'package:flutter/material.dart';


class HabitTitle extends StatelessWidget {

  final String habitName;
  final bool habitCompleted;
  final Function(bool?)? onChanged;

  const HabitTitle({super.key, required this.habitName, required this.habitCompleted, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // checkbox
            Checkbox(value: habitCompleted, onChanged: onChanged),

            // habit name
            Text(habitName),
          ],
        ),
      ),
    );
  }
}