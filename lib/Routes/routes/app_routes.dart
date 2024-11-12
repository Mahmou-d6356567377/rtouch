import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/View/pub_widgets/custom_button_nav_bar.dart';
import 'package:rtouch/View/screens/auth/login_screan/login_screan.dart';
import 'package:rtouch/View/screens/auth/make_account_screan/make_account_screan.dart';
import 'package:rtouch/View/screens/intro_screans/onBoarding_screan/onBoarding_screan.dart';
import 'package:rtouch/View/screens/intro_screans/splash_screan/splash_screan.dart';
import 'package:rtouch/View/screens/main_screans/cart/cart_screan.dart';
import 'package:rtouch/View/screens/main_screans/cart/screens/Map_screan/map_screan.dart';
import 'package:rtouch/View/screens/main_screans/cart/screens/addresses_screen/addresses_screen.dart';
import 'package:rtouch/View/screens/main_screans/cart/screens/create_address_screen/create_address_screen.dart';
import 'package:rtouch/View/screens/main_screans/cart/screens/pay_screen/pay_screen.dart';
import 'package:rtouch/View/screens/main_screans/cart/screens/special_size_screen/special_size_screen.dart';
import 'package:rtouch/View/screens/main_screans/category_screans/men_category/men_category.dart';
import 'package:rtouch/View/screens/main_screans/category_screans/women_category/women_category.dart';
import 'package:rtouch/View/screens/main_screans/main_menu_screans/main_menue_screan.dart';
import 'package:rtouch/View/screens/main_screans/main_menu_screans/screens/about_devoloper/about_devoloper.dart';
import 'package:rtouch/View/screens/main_screans/main_menu_screans/screens/callUs_screen/call_us_screen.dart';
import 'package:rtouch/View/screens/main_screans/main_menu_screans/screens/complain_screen/complain_screen.dart';
import 'package:rtouch/View/screens/main_screans/main_menu_screans/screens/favorites_screen/favorites_screen.dart';
import 'package:rtouch/View/screens/main_screans/main_menu_screans/screens/setting/setting_screen.dart';
import 'package:rtouch/View/screens/main_screans/main_menu_screans/screens/terms_conditions_screen/terms_and_conditions.dart';
import 'package:rtouch/View/screens/main_screans/main_menu_screans/screens/who_we_are_screeen/who_we_are_screen.dart';
import 'package:rtouch/View/screens/main_screans/main_screan/widgets/all_screans/categories_screan.dart';
import 'package:rtouch/View/screens/main_screans/main_screan/widgets/all_screans/products_screen.dart';
import 'package:rtouch/View/screens/main_screans/main_screan/widgets/all_screans/service_provider_all.dart';
import 'package:rtouch/View/screens/main_screans/main_screan/widgets/all_screans/story_screans.dart';
import 'package:rtouch/View/screens/main_screans/product_details_screan1/product_details_screan1.dart';
import 'package:rtouch/View/screens/main_screans/product_details_screan2/product_details_screan2.dart';
import 'package:rtouch/View/screens/my_chat_screans/my_chat_screan.dart';

abstract class AppRoutes {
  static const sps = '/splashscrean';
  static const ls = '/loginscrean';
  static const bas = '/buildaccountscrean';
  static const obs = '/onboardingscrean';
  static const cbnbs = '/custombuttomnavigationbarscrean';
  static const pds1 = '/productdetialscrean1';
  static const pds2 = '/productdetialscrean2';
  static const wcs = '/womencategoryscrean';
  static const mcs = '/mencategoryscrean';
  static const mms = '/mainmenuscrean';
  static const cs = '/cartscrean';
  static const cas = '/createaddressscrean';
  static const ps = '/payscrean';
  static const as = '/addressesscrean';
  static const cs2 = '/complainscrean';
  static const wwrs = '/whowearescreen';
  static const fs = '/favoritesscreen';
  static const cus = '/callusscreen';
  static const ads = '/aboutdevoloperscreen';
  static const ss = '/settingscreen';
  static const tcs = '/termsandconditionscreen';
  static const gms = '/googlemapscreen';
  static const sps2 = '/serviceproviderscreen';
  static const cs3 = '/categoryscreen';
  static const cs4 = '/chatscreen';
  static const ss2 = '/storiesscreen';
  static const pss = '/productsscreen';
  static const ssc = '/specialsizescreen';

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
          return const ProductDetailsScrean1();
        },
      ),
      GoRoute(
        path: pds2,
        builder: (BuildContext context, GoRouterState state) {
          return const ProductDetailsScrean2();
        },
      ),
      GoRoute(
        path: wcs,
        builder: (BuildContext context, GoRouterState state) {
          return const WomenCategory();
        },
      ),
      GoRoute(
        path: mcs,
        builder: (BuildContext context, GoRouterState state) {
          return const MenCategory();
        },
      ),
      GoRoute(
        path: mms,
        builder: (BuildContext context, GoRouterState state) {
          return const MainMenueScrean();
        },
      ),
      GoRoute(
        path: cs,
        builder: (BuildContext context, GoRouterState state) {
          return const CartScrean();
        },
      ),
      GoRoute(
        path: cas,
        builder: (BuildContext context, GoRouterState state) {
          return const CreateAddressScreen();
        },
      ),
      GoRoute(
        path: ps,
        builder: (BuildContext context, GoRouterState state) {
          return const PayScreen();
        },
      ),
      GoRoute(
        path: wwrs,
        builder: (BuildContext context, GoRouterState state) {
          return const WhoWeAreScreen();
        },
      ),
      GoRoute(
        path: fs,
        builder: (BuildContext context, GoRouterState state) {
          return const FavoritesScreen();
        },
      ),
      GoRoute(
        path: cs2,
        builder: (BuildContext context, GoRouterState state) {
          return const ComplainScreen();
        },
      ),
      GoRoute(
        path: cus,
        builder: (BuildContext context, GoRouterState state) {
          return const CallUsScreen();
        },
      ),
      GoRoute(
        path: ads,
        builder: (BuildContext context, GoRouterState state) {
          return const AboutDevoloper();
        },
      ),
      GoRoute(
        path: ss,
        builder: (BuildContext context, GoRouterState state) {
          return const SettingScreen();
        },
      ),
      GoRoute(
        path: tcs,
        builder: (BuildContext context, GoRouterState state) {
          return const TermsAndConditions();
        },
      ),
      GoRoute(
        path: gms,
        builder: (BuildContext context, GoRouterState state) {
          return const MapScrean();
        },
      ),
      GoRoute(
        path: as,
        builder: (BuildContext context, GoRouterState state) {
          return const AddressesScreen();
        },
      ),
      GoRoute(
        path: sps2,
        builder: (BuildContext context, GoRouterState state) {
          return const ServiceProviderAll();
        },
      ),
      GoRoute(
        path: cs3,
        builder: (BuildContext context, GoRouterState state) {
          return const CategoriesScrean();
        },
      ),
      GoRoute(
        path: ss2,
        builder: (BuildContext context, GoRouterState state) {
          return const StoriesScrean();
        },
      ),
      GoRoute(
        path: pss,
        builder: (BuildContext context, GoRouterState state) {
          return const ProductsScreen();
        },
      ),
      GoRoute(
        path: cs4,
        builder: (BuildContext context, GoRouterState state) {
          return const MyChatScrean();
        },
      ),
      GoRoute(
        path: ssc,
        builder: (BuildContext context, GoRouterState state) {
          return const SpecialSizeScreen();
        },
      ),
    ],
  );
}
