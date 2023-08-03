import 'package:flutter/material.dart';
import 'dart:ui';

import '../../../../../../core/constants/constants.dart';
import '../../models/home_item_model.dart';

class GridViewItemsWidget extends StatefulWidget {
  final HomeItems item;
  const GridViewItemsWidget({super.key, required this.item,});


  @override
  State<GridViewItemsWidget> createState() => _GridViewItemsWidgetState();
}

class _GridViewItemsWidgetState extends State<GridViewItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 189,
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.item.colors,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(width: 3, color: widget.item.borderColors),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 67,
            width: 100,
            child: Image.asset(widget.item.image),
          ),
          const SizedBox(height: 20),
          Text(
            widget.item.name,
            style: const TextStyle(
              fontFamily: 'SF Compact Text',
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
