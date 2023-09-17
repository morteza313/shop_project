import 'package:apple_shop/widgets/cached_image.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/colors.dart';
import '../data/model/banner.dart';

class BannerSlider extends StatelessWidget {
  List<BannerCampain> bannerList;
  BannerSlider(this.bannerList, {super.key});
  PageController controller = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: controller,
            itemCount: bannerList.length,
            itemBuilder: (context, index) {
              return CachedImage(imageUrl: bannerList[index].thumbnail!);
            },
          ),
        ),
        Positioned(
          bottom: 10,
          child: SmoothPageIndicator(
            effect: const ExpandingDotsEffect(
              expansionFactor: 5,
              dotHeight: 8,
              dotWidth: 8,
              dotColor: Colors.white,
              activeDotColor: CustomColors.blueIndicator,
            ),
            controller: controller,
            count: 3,
          ),
        )
      ],
    );
  }
}
