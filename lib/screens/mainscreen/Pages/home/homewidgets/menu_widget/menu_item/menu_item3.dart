import 'package:flutter/material.dart';

import '../../../../../../../core/constants/constants.dart';

class MenuItem3 extends StatefulWidget {
  const MenuItem3({super.key});

  @override
  State<MenuItem3> createState() => _MenuItem3State();
}

class _MenuItem3State extends State<MenuItem3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
      child: Container(
        height: 210,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.C_FF1A237E
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: SizedBox(
                    width: 110,
                    height: 80,
                    child: Image.asset(AppImages.img_3),
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
                        width: 55,
                        decoration: ShapeDecoration(
                          color: AppColors.C_FF4C55BB,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                        child: const Center(
                          child: Text('Cek',style: TextStyle(
                            color: AppColors.white,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),),
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
