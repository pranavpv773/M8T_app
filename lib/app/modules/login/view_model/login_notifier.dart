import 'dart:developer';

import 'package:flutter/widgets.dart';

class LoginNotifier with ChangeNotifier {
  final userName = TextEditingController();
  final password = TextEditingController();
  final loginKey = GlobalKey<FormState>();
  bool obsecure = true;
  bool signUp = false;

  void cardFunction(bool change) {
    log(change.toString());
    signUp = change;
    notifyListeners();
  }

  Future<void> getLogin(BuildContext context) async {
    if (loginKey.currentState!.validate()) {}
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
    userName.clear();
    password.clear();
  }
}
