import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:m8app/app/modules/login/view_model/login_notifier.dart';
import 'package:m8app/app/modules/signup/view/sign_up.dart';
import 'package:m8app/app/utils/app_routes.dart';
import 'package:m8app/app/utils/colors.dart';
import 'package:provider/provider.dart';

import 'button_widget.dart';
import 'textform.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginNotifier>().loginKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextformsField(
            controller: context.read<LoginNotifier>().userName,
            title: "Username",
            icon: const Icon(Icons.person),
          ),
          TextformsField(
            controller: context.read<LoginNotifier>().password,
            title: "Password",
            obsecure: context.watch<LoginNotifier>().obsecure,
            icon1: IconButton(
              icon: context.watch<LoginNotifier>().obsecure
                  ? Iconify(
                      Ic.twotone_remove_red_eye,
                      color: AppColors.kLight,
                    )
                  : Iconify(
                      Mdi.eye_off_outline,
                      color: AppColors.kLight,
                    ),
              onPressed: () {
                context.read<LoginNotifier>().obSecureFn();
              },
            ),
            icon: const Icon(Icons.lock_outline),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ButtonWidget(
              horizontal: 40,
              vertical: 10,
              fn: () {
                context.read<LoginNotifier>().getLogin(context);
              },
              title: 'Sign In',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("New to our Platform?"),
              TextButton(
                onPressed: () {
                  AppRoutes.nextScreen(
                    screen: const SignUpScreen(),
                  );
                },
                child: const Text(
                  "Sign Up",
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
