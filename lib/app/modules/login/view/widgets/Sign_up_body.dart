import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m8app/app/app_style/app_textsstyles.dart';
import 'package:m8app/app/modules/login/view/widgets/button_widget.dart';
import 'package:m8app/app/modules/login/view/widgets/textform.dart';
import 'package:m8app/app/modules/login/view_model/login_notifier.dart';
import 'package:m8app/app/modules/login/view_model/signup_notifier.dart';
import 'package:m8app/app/utils/colors.dart';
import 'package:provider/provider.dart';

import 'login_card.dart';

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
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<LoginNotifier>(builder: (context, val, _) {
              return context.watch<LoginNotifier>().signUp
                  ? SignUpCard(height: height, width: width)
                  : LoginCard(width: width, height: height);
            }),
          ],
        ),
      ),
    );
  }
}

class SignUpCard extends StatelessWidget {
  const SignUpCard({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      duration: const Duration(milliseconds: 500),
      child: Card(
        color: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          height: height.h / 1.1.h,
          width: width.w / 1.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Signup",
                  style: AppTextstyles.h1.copyWith(
                    color: AppColors.kBlack,
                  ),
                ),
              ),
              Form(
                key: context.read<SignUpNotifier>().signupKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 6,
                                child: TextformsField(
                                  controller: context
                                      .read<SignUpNotifier>()
                                      .firstNameCtrl,
                                  title: "Firstname",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 6,
                                child: TextformsField(
                                  controller: context
                                      .read<SignUpNotifier>()
                                      .lastNameCtrl,
                                  title: "Lastname",
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    TextformsField(
                      textype: TextInputType.emailAddress,
                      controller: context.read<SignUpNotifier>().emailCtrl,
                      title: "Email",
                      icon1: const Icon(Icons.email_outlined),
                    ),
                    TextformsField(
                      textype: TextInputType.phone,
                      controller: context.read<SignUpNotifier>().phonectrl,
                      title: "Phone",
                      icon1: const Icon(Icons.phone_callback),
                    ),
                    TextformsField(
                      controller: context.read<SignUpNotifier>().passwordCtrl,
                      title: "Password",
                      obsecure: context.watch<SignUpNotifier>().obsecure,
                      icon1: IconButton(
                        icon: context.watch<SignUpNotifier>().obsecure
                            ? const Icon(Icons.remove_red_eye_outlined)
                            : const Icon(Icons.password),
                        onPressed: () {
                          context.read<SignUpNotifier>().obSecureFn();
                        },
                      ),
                      icon: const Icon(Icons.lock_outline),
                    ),
                    TextformsField(
                      controller: context.read<SignUpNotifier>().passwordCtrl,
                      title: "Confirm Password",
                      obsecure: context.watch<SignUpNotifier>().obsecure,
                      icon1: IconButton(
                        icon: context.watch<SignUpNotifier>().obsecure
                            ? const Icon(Icons.remove_red_eye_outlined)
                            : const Icon(Icons.password),
                        onPressed: () {
                          context.read<SignUpNotifier>().obSecureFn();
                        },
                      ),
                      icon: const Icon(Icons.lock_outline),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ButtonWidget(
                        horizontal: 40,
                        vertical: 10,
                        fn: () {
                          context.read<SignUpNotifier>().signUpFn(context);
                        },
                        title: 'Sign Up',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?"),
                        TextButton(
                          onPressed: () {
                            context.read<LoginNotifier>().cardFunction(false);
                          },
                          child: const Text(
                            "Sign In",
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
