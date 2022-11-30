import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m8app/app/modules/login/view_model/login_notifier.dart';
import 'package:m8app/app/modules/login/view_model/signup_notifier.dart';
import 'package:m8app/app/modules/splash/view/splash.dart';
import 'package:m8app/app/modules/splash/view_model/splash_notifier.dart';
import 'package:m8app/app/utils/app_routes.dart';
import 'package:m8app/app/utils/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (create) => SplashNotifier(),
        ),
        ChangeNotifierProvider(
          create: (create) => LoginNotifier(),
        ),
        ChangeNotifierProvider(
          create: (create) => SignUpNotifier(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          return MaterialApp(
            navigatorKey: AppRoutes.navigateKey,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              iconTheme: IconThemeData(
                color: AppColors.kDark,
              ),
              scaffoldBackgroundColor: AppColors.secondary,
              primarySwatch: Colors.blue,
            ),
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
