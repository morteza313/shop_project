import 'package:flutter/material.dart';

import '../constants/colors.dart';

import '../widgets/banner_slider.dart';
import '../widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                            'جستجوی محصولات',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontFamily: 'sb',
                              fontSize: 16,
                              color: CustomColors.gery,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/icon_search.png'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: BannerSlider(),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 44,
                  right: 44,
                  bottom: 20,
                  top: 32,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'دسته بندی',
                      style: TextStyle(
                        fontFamily: 'sb',
                        color: CustomColors.gery,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 44),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: CategoryHorizontalItemList(),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 44,
                  right: 44,
                  bottom: 20,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_left_categroy.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'مشاهده همه ',
                      style: TextStyle(
                        fontFamily: 'sb',
                        fontSize: 12,
                        color: CustomColors.blue,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'پرفروش ترین ها',
                      style: TextStyle(
                        fontFamily: 'sb',
                        color: CustomColors.gery,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 44),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: ProductItem(),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 44,
                  right: 44,
                  bottom: 20,
                  top: 32,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_left_categroy.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'مشاهده همه ',
                      style: TextStyle(
                        fontFamily: 'sb',
                        fontSize: 12,
                        color: CustomColors.blue,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'پر بازدید ترین ها',
                      style: TextStyle(
                        fontFamily: 'sb',
                        color: CustomColors.gery,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 44),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: ProductItem(),
                      );
                    },
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

class CategoryHorizontalItemList extends StatelessWidget {
  const CategoryHorizontalItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 56,
          decoration: ShapeDecoration(
            color: Colors.red,
            shadows: const [
              BoxShadow(
                color: Colors.red,
                blurRadius: 25,
                spreadRadius: -12,
                offset: Offset(0.0, 15),
              )
            ],
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: const Icon(
            Icons.ads_click_outlined,
            color: Colors.white,
            size: 26,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'همه',
          style: TextStyle(
            fontFamily: 'SB',
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
