import 'package:flutter/material.dart';
import 'package:m8app/app/app_style/app_textsstyles.dart';
import 'package:m8app/app/utils/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.horizontal,
    required this.vertical,
    required this.fn,
    required this.title,
  }) : super(key: key);
  final double horizontal;
  final double vertical;
  final VoidCallback fn;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        primary: AppColors.primary1,
        textStyle: AppTextstyles.h2,
      ),
      onPressed: fn,
      child: Text(title),
    );
  }
}
