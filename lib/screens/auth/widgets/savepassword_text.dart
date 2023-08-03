import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class SavePasswordText extends StatefulWidget {
  const SavePasswordText({super.key});

  @override
  State<SavePasswordText> createState() => _SavePasswordTextState();
}

class _SavePasswordTextState extends State<SavePasswordText> {
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
        const Text(
          'Privace Policy',
          style: TextStyle(
            color: AppColors.C_FF7583CA,
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
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
