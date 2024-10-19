import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/auth/login_screan/login_screan.dart';
import 'package:rtouch/UI/auth/make_account_screan/make_account_screan.dart';
import 'package:rtouch/UI/intro_screans/onBoarding_screan/onBoarding_screan.dart';
import 'package:rtouch/UI/intro_screans/splash_screan/splash_screan.dart';
import 'package:rtouch/UI/main_screans/product_details_screan2/product_details_screan2.dart';
import 'package:rtouch/UI/pub_widgets/custom_button_nav_bar.dart';

abstract class AppRoutes {
  static const sps = '/splashscrean';
  static const ls = '/loginscrean';
  static const bas = '/buildaccountscrean';
  static const obs = '/onboardingscrean';
  static const cbnbs = '/custombuttomnavigationbarscrean';
  static const pds1 = '/productdetialscrean1';
  static const pds2 = '/productdetialscrean2';

  static final GoRouter router = GoRouter(
    initialLocation: sps,
    routes: [
      GoRoute(
        path: sps,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScrean();
        },
      ),
      GoRoute(
        path: ls,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScrean();
        },
      ),
        GoRoute(
        path: bas,
        builder: (BuildContext context, GoRouterState state) {
          return const BuildAccountScrean();
        },
      ),

      GoRoute(
        path: obs,
        builder: (BuildContext context, GoRouterState state) {
          return const OnBoardingScrean();
        },
      ),
      GoRoute(
        path: cbnbs,
        builder: (BuildContext context, GoRouterState state) {
          return const CustomBottomNavigationBar();
        },
      ),
       GoRoute(
        path: pds1,
        builder: (BuildContext context, GoRouterState state) {
          return const ProductDetailsScrean2();
        },
      ),
        GoRoute(
        path: pds2,
        builder: (BuildContext context, GoRouterState state) {
          return const ProductDetailsScrean2();
        },
      ),
    ],
  );
}
