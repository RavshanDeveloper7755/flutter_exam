import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/constants.dart';
import 'facebook.dart';
import 'google.dart';
import 'login_title.dart';

class SignUpTopWidget extends StatefulWidget {
  const SignUpTopWidget({super.key});

  @override
  State<SignUpTopWidget> createState() => _SignUpTopWidgetState();
}

class _SignUpTopWidgetState extends State<SignUpTopWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
                height: 340,
                color: AppColors.white,
                child: Image.asset(AppImages.img_17)),
            Positioned(
              top: 40,
              left: 20,
              child: SizedBox(
                height: 65,
                width: 65,
                child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.arrowback,
                    )),
              ),
            ),
            const LoginTitleWidget(),
            const Positioned(
                top: 190, left: 20, right: 20, child: FacebookButton()),
            const Positioned(
                top: 270, left: 20, right: 20, child: GoogleButton())
          ],
        ),
      ],
    );
  }
}
