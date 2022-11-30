import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:m8app/app/app_style/app_textsstyles.dart';
import 'package:m8app/app/utils/images.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FadeInDownBig(
            child: Center(
          child: Image.asset(
            AppImages.eight,
          ),
        )),
        FadeInUpBig(
          child: Text(
            "M8Talents",
            style: AppTextstyles.h1,
          ),
        ),
        const SizedBox(),
      ],
    );
  }
}
