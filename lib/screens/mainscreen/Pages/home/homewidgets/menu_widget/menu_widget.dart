import 'package:flutter/material.dart';
import 'package:flutter_exam/core/constants/constants.dart';
import 'package:flutter_exam/screens/mainscreen/Pages/home/homewidgets/menu_widget/menu_item/menu_item1.dart';
import 'package:flutter_exam/screens/mainscreen/Pages/home/homewidgets/menu_widget/menu_item/menu_item2.dart';
import 'package:flutter_exam/screens/mainscreen/Pages/home/homewidgets/menu_widget/menu_item/menu_item3.dart';
import 'package:flutter_exam/screens/mainscreen/Pages/home/homewidgets/menu_widget/menu_item/menu_item4.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
          child: Text(
            'Menu Admin',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Row(
          children: [
            Column(
              children: [
                MenuItem1(),
                MenuItem3(),
              ],
            ),
            Column(
              children: [
                MenuItem2(),
                MenuItem4()
              ],
            ),
          ],
        ),

      ],
    );
  }
}
