import 'package:apple_shop/widgets/banner_slider.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 56,
                  width: 56,
                  decoration: ShapeDecoration(
                    color: Colors.red,
                    shadows: [
                      BoxShadow(
                        color: Colors.red,
                        blurRadius: 40,
                        spreadRadius: -6,
                        offset: Offset(0.0, 15),
                      )
                    ],
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Icon(
                    Icons.ads_click_outlined,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('data')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
