import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/colors.dart';

class BannerSlider extends StatelessWidget {
  BannerSlider({super.key});
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
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  color: Colors.red,
                  height: 200,
                ),
              );
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
