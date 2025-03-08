import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/configs/Theme/app_colors.dart';

class SplashSalesBar extends StatelessWidget {
  const SplashSalesBar({super.key, required this.salesText, required this.salesDetails});
  final String salesText;
  final String salesDetails;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(10)
      ),
      child:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              salesText,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),
            ),
            Text(
              salesDetails,
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400
              ),
            )

          ],
        ),
      ),
    );
  }
}
