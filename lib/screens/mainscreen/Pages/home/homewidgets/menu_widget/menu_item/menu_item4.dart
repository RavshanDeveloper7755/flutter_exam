import 'package:flutter/material.dart';

import '../../../../../../../core/constants/constants.dart';

class MenuItem4 extends StatefulWidget {
  const MenuItem4({super.key});

  @override
  State<MenuItem4> createState() => _MenuItem4State();
}

class _MenuItem4State extends State<MenuItem4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
      child: Container(
        height: 210,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.C_FF3CAF47
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Container(
                      height: 114,
                      width: 160,
                      child: Image.asset(AppImages.img_5)
                  ),
                ),
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 91,
                        height: 46,
                        child: Text(
                          'Daftar\nBarang',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: ShapeDecoration(
                          color: AppColors.C_FFFBBC05,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
