import 'package:flutter/material.dart';
import 'dart:ui';
import '../../../../../core/constants/constants.dart';

class HomeItems {
  String image;
  String name;
  Color colors;
  Color borderColors;

  HomeItems({
    required this.image,
    required this.name,
    required this.colors,
    required this.borderColors,
  });

  static List<HomeItems> itmes = [
    HomeItems(
      image: AppImages.img_8,
      name: 'Frash Fruits\n& Vegetable',
      colors: AppColors.C_9DD9B5FF,
      borderColors: AppColors.C_FF53B175,

    ),
    HomeItems(
      image: AppImages.img_9,
      name: 'Cooking Oil\n& Ghee',
      colors: AppColors.C_E0C7ABFF,
      borderColors: AppColors.C_F8A44C,
    ),
    HomeItems(
      image: AppImages.img_10,
      name: 'Meat & Fish',
      colors: AppColors.C_F6CEC8FF,
      borderColors: AppColors.C_F7A593
    ),
    HomeItems(
      image: AppImages.img_11,
      name: 'Bakery & Snacks',
      colors: AppColors.C_E5D9FCFF,
      borderColors: AppColors.C_D3B0E0FF,
    ),
    HomeItems(
      image: AppImages.img_12,
      name: 'Dairy & Eggs',
      colors: AppColors.C_FDE598,
      borderColors: AppColors.C_FCEAD1FF,
    ),
    HomeItems(
      image: AppImages.img_13,
      name: 'Beverages',
      colors: AppColors.C_B7DFF5,
      borderColors: AppColors.C_D4DFF8FF,
    ),

  ];
}
