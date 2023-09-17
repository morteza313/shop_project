import 'package:apple_shop/widgets/category_icon_item_chip.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundScreenColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
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
                          'حساب کاربری',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'sb',
                            fontSize: 16,
                            color: CustomColors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Text(
              'مرتضی خشکی',
              style: TextStyle(
                fontFamily: 'sb',
                fontSize: 16,
              ),
            ),
            const Text(
              '123456789',
              style: TextStyle(
                fontFamily: 'sm',
                fontSize: 10,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Directionality(
              textDirection: TextDirection.rtl,
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  // CategoryHorizontalItemChip(),
                  // CategoryHorizontalItemChip(),
                  // CategoryHorizontalItemChip(),
                  // CategoryHorizontalItemChip(),
                  // CategoryHorizontalItemChip(),
                  // CategoryHorizontalItemChip(),
                  // CategoryHorizontalItemChip(),
                  // CategoryHorizontalItemChip(),
                  // CategoryHorizontalItemChip(),
                  // CategoryHorizontalItemChip(),
                ],
              ),
            ),
            const Spacer(),
            const Text(
              'اپل شاپ',
              style: TextStyle(
                fontFamily: 'sm',
                fontSize: 10,
                color: CustomColors.gery,
              ),
            ),
            const Text(
              'v-1.0.00',
              style: TextStyle(
                fontFamily: 'sm',
                fontSize: 10,
                color: CustomColors.gery,
              ),
            ),
            const Text(
              'inestagram.com/Mojava-dev',
              style: TextStyle(
                fontFamily: 'sm',
                fontSize: 10,
                color: CustomColors.gery,
              ),
            )
          ],
        ),
      ),
    );
  }
}
