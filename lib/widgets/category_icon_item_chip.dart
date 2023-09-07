import 'package:flutter/material.dart';

class CategoryHorizontalItemChip extends StatelessWidget {
  const CategoryHorizontalItemChip({
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
