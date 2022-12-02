import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m8app/app/app_style/app_textsstyles.dart';
import 'package:m8app/app/utils/colors.dart';

import 'widgets/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        toolbarHeight: 80.h,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi,",
                style: AppTextstyles.h2,
              ),
              Text(
                "Pranav",
                style: AppTextstyles.h1,
              ),
            ],
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
