import 'package:flutter/material.dart';
import 'package:todoapp/app/components/my_button.dart';
import 'package:todoapp/app/constans/app_colors.dart';

class DialogBox extends StatelessWidget {
  const DialogBox(
      {super.key,
      required this.onSave,
      required this.onCancel,
      required this.controller});
  final controller;
  final void Function() onSave;
  final void Function() onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.mainColor,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.black,
                hintText: 'Add a new task',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Save', onPressed: onSave),
                const SizedBox(
                  width: 8,
                ),
                MyButton(text: 'Cancel', onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
