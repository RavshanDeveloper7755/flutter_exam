import 'package:flutter/material.dart';
import 'package:flutter_exam/core/constants/constants.dart';
import 'package:flutter_exam/screens/mainscreen/Pages/explore/explore.dart';
import 'package:flutter_exam/screens/mainscreen/Pages/order/order.dart';
import 'package:flutter_exam/screens/mainscreen/Pages/transackt/transackt.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Pages/home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> screens = [
    const HomePage(),
    const Explore(),
    const Order(),
    const Transackt(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.store, color: AppColors.black,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.dollar),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.deliver),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.C_FF6872EB,
        onTap: _onItemTapped,
      ),
    );
  }
}
