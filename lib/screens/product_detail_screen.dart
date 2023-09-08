import 'dart:ffi';

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundScreenColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 25,
                  left: 44,
                  right: 44,
                  top: 8,
                ),
                child: Container(
                  height: 46,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Image.asset('assets/images/icon_apple_blue.png'),
                        const Expanded(
                          child: Text(
                            'آیفون',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'sb',
                              fontSize: 16,
                              color: CustomColors.blue,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Image.asset('assets/images/icon_back.png')
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Text(
                  'آیفون 2022 ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'sb',
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44),
                child: Container(
                  height: 284,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            right: 15,
                            left: 15,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/icon_star.png'),
                              const Text(
                                '4.6',
                                style: TextStyle(
                                  fontFamily: 'sm',
                                  fontSize: 12,
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                height: double.infinity,
                                child: Image.asset(
                                  'assets/images/iphone.png',
                                ),
                              ),
                              const Spacer(),
                              Image.asset(
                                'assets/images/icon_favorite_deactive.png',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 44, right: 44),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(left: 20),
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 1,
                                    color: CustomColors.gery,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child:
                                      Image.asset('assets/images/iphone.png'),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 44,
                  left: 44,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'انتخاب رنگ',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 44,
                  left: 44,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'انتخاب حافظه داخلی',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 25,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: CustomColors.gery),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: Text(
                                '128',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'sb',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 25,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: CustomColors.gery),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: Text(
                                '256',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'sb',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 25,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: CustomColors.gery),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: Text(
                                '512',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'sb',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(top: 24, left: 44, right: 44),
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: CustomColors.gery,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_left_categroy.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'مشاهده',
                        style: TextStyle(
                          color: CustomColors.blue,
                          fontFamily: 'sb',
                          fontSize: 12,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        ': مشخصات فنی',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(top: 24, left: 44, right: 44),
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: CustomColors.gery,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_left_categroy.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'مشاهده',
                        style: TextStyle(
                          color: CustomColors.blue,
                          fontFamily: 'sb',
                          fontSize: 12,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        ':  توضیحات محصول',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(top: 24, left: 44, right: 44),
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: CustomColors.gery,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_left_categroy.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'مشاهده',
                        style: TextStyle(
                          color: CustomColors.blue,
                          fontFamily: 'sb',
                          fontSize: 12,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        ':  نظرات کاربران',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
