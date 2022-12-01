import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:m8app/app/modules/category/model/category_model.dart';
import 'package:m8app/app/utils/api_endpoints.dart';

class CategoryServices {
  Future<CategoryModel> fetchCategory() async {
    log('reached fn');
    final dio = Dio();
    try {
      Response response = await dio.get(ApiEndPoints().categoryApi);
      if (response.statusCode == 200) {
        log('reached success');
        return CategoryModel.fromJson(response.data);
      } else {
        log('reached else');

        return CategoryModel.fromJson(response.data);
      }
    } on DioError catch (e) {
      log(e.message);
      return CategoryModel(message: e.message, status: "false");
    } catch (e) {
      log('reached error');

      log(e.toString());
      return CategoryModel(message: e.toString(), status: "false");
    }
  }
}
