import 'package:flutter/material.dart';
import 'package:flutter_exam/core/constants/constants.dart';
import 'package:flutter_exam/screens/auth/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/app_routes.dart';
import '../mainscreen/main_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  bool isLog = false;
  Future<bool> isLoggedIn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    isLog = pref.getBool("isLoggedIn") ?? false;
    return pref.getBool("isLoggedIn") ?? false;
  }

  @override
  void initState() {
    super.initState();
    isLoggedIn();
    Future.delayed(
      const Duration(seconds: 3),
    ).then(
          (value) {
        isLog
            ? Navigator.pushReplacementNamed(context, RouteName.bottomNav)
            : Navigator.pushReplacementNamed(context, RouteName.signup);
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.top),
                child: Image.asset(AppImages.img_1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 161, horizontal: 65.60),
                child: Image.asset(AppImages.img),
              ),
            ],
          ),

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 290,
                  child: Text('Belanja kebutuhan dalam genggaman.',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 30,
                      fontFamily: 'SF UI Display',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
