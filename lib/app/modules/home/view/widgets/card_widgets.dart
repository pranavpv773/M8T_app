import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m8app/app/app_style/app_textsstyles.dart';
import 'package:m8app/app/utils/colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.count,
    required this.image,
    required this.avathar,
    required this.title,
  }) : super(key: key);
  final String title;
  final int count;
  final String image;
  final String avathar;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Card(
        elevation: 10,
        shadowColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              width: 180.w,
              height: 150.h,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(20.w),
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: AppTextstyles.h3.copyWith(
                      color: AppColors.kBlack,
                      letterSpacing: 1,
                      wordSpacing: 1.5,
                      overflow: TextOverflow.ellipsis,
                      fontSize: 16.sp,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Total products: 2",
                    style: AppTextstyles.h3.copyWith(
                      overflow: TextOverflow.ellipsis,
                      color: AppColors.kGrey,
                      fontSize: 13.sp,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
