import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/constants.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 63,
      decoration: ShapeDecoration(
        color: AppColors.C_FF2D50FF,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(38),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.facebook),
            SizedBox(width: 40,),
            const Text(
              'CONTINUE WITH FACEBOOK',
              style: TextStyle(
                color: Color(0xFFF6F1FA),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 1.08,
                letterSpacing: 0.70,
              ),
            )
          ],
        ),
      ),
    );
  }
}
