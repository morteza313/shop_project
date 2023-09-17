import 'package:apple_shop/bloc/home/home_bloc.dart';
import 'package:apple_shop/bloc/home/home_event.dart';
import 'package:apple_shop/bloc/home/home_state.dart';
import 'package:apple_shop/data/model/banner.dart';
import 'package:apple_shop/data/model/category.dart';

import 'package:apple_shop/widgets/category_icon_item_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants/colors.dart';

import '../widgets/banner_slider.dart';
import '../widgets/product_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<HomeBloc>(context).add(HomeGetInitDataEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundScreenColor,
      body: SafeArea(child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              if (state is HomeLoadingState) ...[
                const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()),
                )
              ],
              const _getSearchBox(),
              if (state is HomeRequestSuccessState) ...[
                state.bannerList.fold((l) {
                  return SliverToBoxAdapter(
                    child: Text(l),
                  );
                }, (r) {
                  return _getBanners(r);
                })
              ],
              const _getCategoryListTitile(),
              if (state is HomeRequestSuccessState) ...[
                state.categoryList.fold((l) {
                  return SliverToBoxAdapter(
                    child: Text(l),
                  );
                }, (r) {
                  return _getCategoryList(r);
                })
              ],
              const _getBestSellerTitle(),
              const _getBestSellerProduct(),
              const _getMostViewedTitle(),
              const _getMostViewedProduct()
            ],
          );
        },
      )),
    );
  }
}

class _getMostViewedProduct extends StatelessWidget {
  const _getMostViewedProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
    );
  }
}

class _getMostViewedTitle extends StatelessWidget {
  const _getMostViewedTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 44,
          right: 44,
          bottom: 20,
          top: 32,
        ),
        child: Row(
          children: [
            const Text(
              'پر بازدید ترین ها',
              style: TextStyle(
                fontFamily: 'sb',
                color: CustomColors.gery,
                fontSize: 12,
              ),
            ),
            const Spacer(),
            const Text(
              'مشاهده همه ',
              style: TextStyle(
                fontFamily: 'sb',
                fontSize: 12,
                color: CustomColors.blue,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset('assets/images/icon_left_categroy.png'),
          ],
        ),
      ),
    );
  }
}

class _getBestSellerProduct extends StatelessWidget {
  const _getBestSellerProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
    );
  }
}

class _getBestSellerTitle extends StatelessWidget {
  const _getBestSellerTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 44,
          right: 44,
          bottom: 20,
        ),
        child: Row(
          children: [
            const Text(
              'پرفروش ترین ها',
              style: TextStyle(
                fontFamily: 'sb',
                color: CustomColors.gery,
                fontSize: 12,
              ),
            ),
            const Spacer(),
            const Text(
              'مشاهده همه ',
              style: TextStyle(
                fontFamily: 'sb',
                fontSize: 12,
                color: CustomColors.blue,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset('assets/images/icon_left_categroy.png'),
          ],
        ),
      ),
    );
  }
}

class _getCategoryList extends StatelessWidget {
  List<Category> categoryList;
  _getCategoryList(
    this.categoryList, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(right: 44),
        child: SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: categoryList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CategoryHorizontalItemChip(categoryList[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _getCategoryListTitile extends StatelessWidget {
  const _getCategoryListTitile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
          left: 44,
          right: 44,
          bottom: 20,
          top: 32,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
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
    );
  }
}

class _getBanners extends StatelessWidget {
  _getBanners(
    this.bannerList, {
    super.key,
  });
  List<BannerCampain> bannerList;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BannerSlider(bannerList),
    );
  }
}

class _getSearchBox extends StatelessWidget {
  const _getSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
                Image.asset('assets/images/icon_search.png'),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: Text(
                    'جستجوی محصولات',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'sb',
                      fontSize: 16,
                      color: CustomColors.gery,
                    ),
                  ),
                ),
                Image.asset('assets/images/icon_apple_blue.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
