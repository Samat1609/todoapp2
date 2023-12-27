import 'package:flutter/material.dart';
import 'package:todoapp/app/constans/app_colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.appBarrandContainerColor,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
