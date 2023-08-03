import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';

class PriceContainer extends StatefulWidget {
  const PriceContainer({super.key});

  @override
  State<PriceContainer> createState() => _PriceContainerState();
}

class _PriceContainerState extends State<PriceContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            height: 95,
            width: 345,
            decoration: BoxDecoration(
                color: AppColors.C_FFFFDE80,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Image.asset(AppImages.img_15, fit: BoxFit.fill,),
          ),

          Positioned(
            right: 18,
            top: 31,
            bottom: 31,
            child: Container(
              width: 155,
              height: 35,
              decoration: ShapeDecoration(
                color: AppColors.C_FFFF4B34,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(29),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                child: Text(
                  'Persanan Baru',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),

          const Positioned(
            top: 27,
              left: 25,
              child: Text(
                'Rp 1.250.000',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
          ),

          const Positioned(
            top: 56,
              left: 25,
              child: Text(
                'Today',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.70,
                ),
              )
          )

        ]
    );
  }
}


/*




Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 31, horizontal: 10),
                  child: Container(
                    width: 160,
                    height: 35,
                    decoration: ShapeDecoration(
                      color: AppColors.C_FFFF4B34,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                      child: Text('Persanan Baru',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 27, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Rp 1.250.000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  Text(
                    'Today',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.70,
                    ),
                  )
                ],
              ),
            )






 */