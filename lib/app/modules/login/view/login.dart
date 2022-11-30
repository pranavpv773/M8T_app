import 'package:flutter/material.dart';
import 'package:m8app/app/app_style/app_textsstyles.dart';
import 'package:m8app/app/utils/colors.dart';

import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: AppColors.secondary,
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
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
          ],
        ),
      ),
    );
  }
}
