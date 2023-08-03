import 'package:flutter/material.dart';
import 'package:flutter_exam/core/constants/constants.dart';

class PrivacyText extends StatefulWidget {
  const PrivacyText({super.key});

  @override
  State<PrivacyText> createState() => _PrivacyTextState();
}

class _PrivacyTextState extends State<PrivacyText> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.green;
    }

    return Row(
      children: [
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'i have read the',
                style: TextStyle(
                  color: AppColors.C_FFA1A4B2,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: 'Privace Policy',
                style: TextStyle(
                  color: AppColors.C_FF7583CA,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),



        Spacer(),


        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
      ],
    );
  }
}
