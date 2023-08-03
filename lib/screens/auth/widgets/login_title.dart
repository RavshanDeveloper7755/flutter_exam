import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class LoginTitleWidget extends StatelessWidget {
  const LoginTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 125,
      left: 65,
      right: 65,
      child: Text(
        'Create your account ',
        style: TextStyle(
          color: AppColors.black,
          fontSize: 28,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}