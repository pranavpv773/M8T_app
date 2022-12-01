import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:m8app/app/modules/category/api_services/services.dart';
import 'package:m8app/app/modules/category/model/category_model.dart';

class CategoryNotifier with ChangeNotifier {
  CategoryNotifier() {
    fetchCategoryFn();
  }
  List<Data> dataList = [];
  fetchCategoryFn() async {
    CategoryModel resp = await CategoryServices().fetchCategory();

    if (resp.status == "true") {
      dataList.add(resp.data!);
      notifyListeners();
      log("added");
    } else {
      Fluttertoast.showToast(
        msg: resp.message.toString(),
        toastLength: Toast.LENGTH_LONG,
      );
    }
  }
}
