import 'package:flutter/material.dart';

import '../../../../../../../core/constants/constants.dart';

class MenuItem1 extends StatefulWidget {
  const MenuItem1({super.key});

  @override
  State<MenuItem1> createState() => _MenuItem1State();
}

class _MenuItem1State extends State<MenuItem1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      child: Container(
        height: 167,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.C_FF5A74FF
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 29),
                  child: Container(
                    width: 110,
                    height: 85,
                    child: Image.asset(AppImages.img_2),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const SizedBox(
                    width: 108,
                    height: 46,
                    child: Text(
                      'Laporan\nPenjualan',
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
                    width: 36,
                    decoration: ShapeDecoration(
                        color: AppColors.C_FF4C55BB,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        )),
                    child: const Center(
                      child: Text('+1',style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
