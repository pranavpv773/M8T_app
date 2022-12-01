import 'package:flutter/material.dart';
import 'widgets/Sign_up_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Body(
          height: height,
          width: width,
        ),
      ),
    );
  }
}
