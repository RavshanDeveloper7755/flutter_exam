import 'package:flutter/material.dart';
import 'package:flutter_exam/core/constants/constants.dart';
import 'package:flutter_exam/screens/mainscreen/Pages/home/homewidgets/menu_widget/menu_widget.dart';
import 'package:flutter_exam/screens/mainscreen/Pages/home/homewidgets/price_container.dart';

import '../order/order.dart';
import 'homewidgets/gridview_items_widget/grid_view_items.dart';
import 'models/home_item_model.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Menu', style: TextStyle(
          color: AppColors.black,
          fontSize: 20,
          fontFamily: 'SF UI Display',
          fontWeight: FontWeight.w700,
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      'Halo, Admin',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontFamily: 'SF UI Display',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PriceContainer(),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10,),
                    child: MenuWidget(),
                  )
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 12),
            ),
            SliverGrid.builder(
              itemCount: HomeItems.itmes.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3.0 / 3.5,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Order()));
                  },
                  child: GridViewItemsWidget(
                    item: HomeItems.itmes[index],
                  ),
                );
              },
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 12),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                child: Container(
                  height: 165,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Image.asset(AppImages.img_14, fit: BoxFit.fill,),
                ),
              ),
            ),
          ],
        ),
      ),
      );
  }
}
