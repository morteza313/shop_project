import 'dart:ui';

import 'package:apple_shop/bloc/authentication/auth_bloc.dart';
import 'package:apple_shop/constants/colors.dart';
import 'package:apple_shop/data/repository/authentication_repository.dart';
import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/screens/card_screen.dart';
import 'package:apple_shop/screens/category_screen.dart';
import 'package:apple_shop/screens/home_screen.dart';
import 'package:apple_shop/screens/login_screen.dart';

import 'package:apple_shop/screens/profile_screen.dart';
import 'package:apple_shop/util/auth_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await getItInit();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedBottomNavigationIndex = 3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: CustomColors.backgroundScreenColor,
        body: IndexedStack(
          index: selectedBottomNavigationIndex,
          children: getScreen(),
        ),
        //  BlocProvider(
        //   create: (context) => AuthBloc(),
        //   child: LoginScreen(),
        // ),

        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 50,
              sigmaY: 50,
            ),
            child: BottomNavigationBar(
              currentIndex: selectedBottomNavigationIndex,
              onTap: (value) {
                setState(() {
                  selectedBottomNavigationIndex = value;
                });
              },
              unselectedLabelStyle: const TextStyle(
                fontFamily: 'sb',
                fontSize: 10,
                color: Colors.black,
              ),
              selectedLabelStyle: const TextStyle(
                fontFamily: 'sb',
                fontSize: 10,
                color: CustomColors.blue,
              ),
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_profile.png'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Container(
                      child:
                          Image.asset('assets/images/icon_profile_active.png'),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0.0, 10),
                          )
                        ],
                      ),
                    ),
                  ),
                  label: 'حساب کاربری',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_basket.png'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Container(
                      child:
                          Image.asset('assets/images/icon_basket_active.png'),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0.0, 10),
                          )
                        ],
                      ),
                    ),
                  ),
                  label: 'سبد خرید',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_category.png'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Container(
                      child:
                          Image.asset('assets/images/icon_category_active.png'),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0.0, 10),
                          )
                        ],
                      ),
                    ),
                  ),
                  label: 'دسته بندی',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_home.png'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Container(
                      child: Image.asset('assets/images/icon_home_active.png'),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0.0, 10),
                          )
                        ],
                      ),
                    ),
                  ),
                  label: 'خانه',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> getScreen() {
    return [
      ProfileScreen(),
      CardScreen(),
      CategoryScreen(),
      HomeScreen(),
    ];
  }
}
