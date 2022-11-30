import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:m8app/app/app_style/app_textsstyles.dart';
import 'package:m8app/app/utils/colors.dart';

import 'login_form.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondary,
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginCard(width: width, height: height),
        ],
      ),
    );
  }
}

class LoginCard extends StatelessWidget {
  const LoginCard({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInRight(
        duration: const Duration(milliseconds: 500),
        child: Card(
          color: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 50,
          shadowColor: AppColors.kLight,
          child: SizedBox(
            width: width / 1.2,
            height: height / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "SignIn",
                  style: AppTextstyles.h1.copyWith(
                    color: AppColors.kLight,
                  ),
                ),
                const LoginFormWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}