import 'package:flutter/widgets.dart';
import 'package:m8app/app/modules/login/view/login.dart';
import 'package:m8app/app/utils/app_routes.dart';

class SplashNotifier with ChangeNotifier {
  SplashNotifier() {
    goScreenOne();
  }

  goScreenOne() async {
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    AppRoutes.removeScreenUntil(
      screen: const LoginScreen(),
    );
  }
}
