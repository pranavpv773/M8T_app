import 'package:flutter/material.dart';
import 'package:m8app/app/modules/splash/view_model/splash_notifier.dart';
import 'package:provider/provider.dart';
import 'widgets/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SplashNotifier>(builder: (context, val, _) {
        return const Body();
      }),
    );
  }
}
