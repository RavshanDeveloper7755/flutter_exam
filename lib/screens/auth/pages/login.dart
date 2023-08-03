import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/auth/widgets/savepassword_text.dart';
import 'package:flutter_exam/screens/auth/widgets/sign_in_text.dart';
import 'package:flutter_exam/screens/auth/widgets/signup_top_widget.dart';
import 'package:flutter_exam/screens/mainscreen/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/constants.dart';
import '../../../routes/app_routes.dart';
import '../widgets/facebook.dart';
import '../widgets/get_start_button.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              children: [

                SignUpTopWidget(),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 26, horizontal: 80),
                  child: Text(
                    'ATAU LOG IN DENGAN EMAIL',
                    style: TextStyle(
                      color: AppColors.C_FFA1A4B2,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.70,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    height: 63,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.C_FFF2F3F7),
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                      child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter valid email";
                            }
                          },
                          controller: emailController,
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            border: InputBorder.none,
                          )),
                    ),
                  ),
                ),




                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 63,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.C_FFF2F3F7),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 7),
                      child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter valid password";
                            }
                          },
                          controller: passwordController,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                          )),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: SavePasswordText(),
                ),

                GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      saveLogin(context);
                      FocusManager.instance.primaryFocus?.unfocus();
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: GetStartedButton(),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }

  void saveLogin(context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("isLoggedIn", true);

    Navigator.pushNamedAndRemoveUntil(
        context, RouteName.bottomNav, (route) => false);
  }

}
