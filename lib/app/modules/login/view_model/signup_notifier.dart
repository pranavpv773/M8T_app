import 'package:flutter/widgets.dart';

class SignUpNotifier with ChangeNotifier {
  final signupKey = GlobalKey<FormState>();
  final firstNameCtrl = TextEditingController();
  final lastNameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final phonectrl = TextEditingController();

  bool obsecure = true;
  signUpFn(BuildContext context) async {
    notifyListeners();
    if (signupKey.currentState!.validate()) {}
  }

  bool obSecureFn() {
    if (obsecure == true) {
      obsecure = false;
      notifyListeners();
    } else {
      obsecure = true;
      notifyListeners();
    }
    notifyListeners();
    return obsecure;
  }

  void disposeCntrl() {
    firstNameCtrl.clear();
    lastNameCtrl.clear();
    emailCtrl.clear();
    passwordCtrl.clear();
    phonectrl.clear();
  }

  bool isValidEmail(String input) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(input);
  }
}
