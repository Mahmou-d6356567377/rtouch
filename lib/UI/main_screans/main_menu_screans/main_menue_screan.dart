import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/main_screans/main_menu_screans/widgets/main_menu_item.dart';
import 'package:rtouch/UI/pub_widgets/textfield_and_button.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';
import 'package:rtouch/help/routes/app_routes.dart';

class MainMenueScrean extends StatefulWidget {
  const MainMenueScrean({super.key});

  @override
  State<MainMenueScrean> createState() => _MainMenueScreanState();
}

class _MainMenueScreanState extends State<MainMenueScrean> {
    bool isclicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: Image.asset(
                        img,
                        fit: BoxFit.fill,
                      )),
                  Positioned(
                      top: 30,
                      right: 10,
                      child: IconButton(
                          onPressed: () {
                            GoRouter.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_forward,
                            size: 50,
                            color: Color(kmaincolor),
                          ))),
                ],
              ),
              const Divider(),
              MainMenuItem(
                title: 'من نحن',
                icon: Icons.question_answer_sharp,
                function: () {
                  GoRouter.of(context).push(AppRoutes.wwrs);
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(),
              ),
              MainMenuItem(
                title: 'الأسئلة الشائعة',
                icon: Icons.question_mark,
                function: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(),
              ),
              MainMenuItem(
                title: 'المفضلة',
                icon: Icons.favorite,
                function: () {
                  GoRouter.of(context).push(AppRoutes.fs);
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(),
              ),
              MainMenuItem(
                title: 'الشكاوى والمقترحات',
                icon: Icons.list_alt_rounded,
                function: () {
                  GoRouter.of(context).push(AppRoutes.cs2);
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(),
              ),
              MainMenuItem(
                title: 'اتصل بنا',
                icon: Icons.call,
                function: () {
                  GoRouter.of(context).push(AppRoutes.cus);
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(),
              ),
              MainMenuItem(
                title: 'سياسة الخصوصية',
                icon: Icons.recommend,
                function: () {
                  GoRouter.of(context).push(AppRoutes.fs);
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(),
              ),
              MainMenuItem(
                title: 'الشروط والأحكام',
                icon: Icons.recommend_outlined,
                function: () {
                  GoRouter.of(context).push(AppRoutes.tcs);
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(),
              ),
              MainMenuItem(
                title: 'عن المطور',
                icon: Icons.view_compact,
                function: () {
                  GoRouter.of(context).push(AppRoutes.ads);
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(),
              ),
              MainMenuItem(
                title: 'الأعدادات',
                icon: Icons.settings,
                function: () {
                  GoRouter.of(context).push(AppRoutes.ss);
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(),
              ),
              MainMenuItem(
                title: 'تسجيل الدخول',
                icon: Icons.logout,
                function: () {
                  GoRouter.of(context).push(AppRoutes.fs);
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(),
              ),
              MainMenuItem(
                title: 'قائمة الاشتراك البريدى',
                icon: Icons.menu_book_sharp,
                function: () {
                  setState(() {
                    isclicked = !isclicked;
                  });
                },
              ),
              Visibility(
                visible: isclicked,
                child: Container(
                  height: 220,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: kmainBoxDecoration3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                             height: 20,
                             margin: const EdgeInsets.all(5),
                             child: Image.asset(kneedle),
                          ),
                          Text(
                            'Subscibe to Mailing List',
                            style: arabicstyle8.copyWith(fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '------------------',
                            style: arabicstyle8.copyWith(fontSize: 25),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Text(
                              'To receive updates, enter your email',
                              style: arabicstyle8.copyWith(fontSize: 17),
                            )
                          ],
                        ),
                      ),
                      const TextFieldAndButton(hint: 'Email', buttonTitle: 'subscribe now'),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.snapchat,
                        color: Color(kmaincolor),
                        size: 40,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        color: Color(kmaincolor),
                        size: 40,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        color: Color(kmaincolor),
                        size: 40,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.tiktok,
                        color: Color(kmaincolor),
                        size: 40,
                      )),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'الاصدار : 1',
                    style: arabicstyle4,
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'كل الحقوق المحفوظة 2023',
                    style: arabicstyle4,
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}