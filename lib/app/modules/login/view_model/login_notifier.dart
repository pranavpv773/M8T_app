import 'package:flutter/widgets.dart';

class LoginNotifier with ChangeNotifier {
  final userName = TextEditingController();
  final password = TextEditingController();
  final loginKey = GlobalKey<FormState>();
  bool obsecure = true;
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
