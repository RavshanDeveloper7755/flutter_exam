import 'package:flutter/material.dart';

import '../../../../../../../core/constants/constants.dart';

class MenuItem2 extends StatefulWidget {
  const MenuItem2({super.key});

  @override
  State<MenuItem2> createState() => _MenuItem2State();
}

class _MenuItem2State extends State<MenuItem2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      child: Container(
        height: 167,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.C_FFFFDE80
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                  child: Container(
                    height: 85,
                    width: 118,
                    child: Image.asset(AppImages.img_4),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 108,
                    height: 46,
                    child: Text(
                      'Pengaturan\nAkun',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
