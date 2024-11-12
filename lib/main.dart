import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rtouch/Routes/routes/app_routes.dart';

void main() async {
    await ScreenUtil.ensureScreenSize();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) =>
       MaterialApp.router(
      
      
        routerConfig: AppRoutes.router,
       debugShowCheckedModeBanner: false,
      ),
    );
  }
}
