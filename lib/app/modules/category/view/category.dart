import 'package:flutter/material.dart';
import 'package:m8app/app/modules/category/view_model/category_notifier.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CategoryNotifier>(builder: (context, val, _) {
        return Container();
      }),
    );
  }
}
