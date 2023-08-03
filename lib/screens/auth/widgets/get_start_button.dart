import 'package:flutter/material.dart';
import 'package:flutter_exam/core/constants/constants.dart';

class GetStartedButton extends StatefulWidget {
  const GetStartedButton({super.key});

  @override
  State<GetStartedButton> createState() => _GetStartedButtonState();
}

class _GetStartedButtonState extends State<GetStartedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      width: 374,
      child: Center(
        child: Text('Get Started', style: TextStyle(color: AppColors.white),),
      ),
      decoration: ShapeDecoration(
        color: AppColors.C_FF6872EB,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(38),
        ),
      ),
    );
  }
}
