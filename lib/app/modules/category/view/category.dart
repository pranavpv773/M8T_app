import 'package:flutter/material.dart';
import 'package:m8app/app/modules/category/view_model/category_notifier.dart';
import 'package:m8app/app/utils/colors.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CategoryNotifier>(builder: (context, val, _) {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 200,
                  color: AppColors.kDark,
                ),
              );
            });
      }),
    );
  }
}
