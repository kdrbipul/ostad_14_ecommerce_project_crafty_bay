import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/constants.dart';

class TotalPriceAndCheckOutSection extends StatelessWidget {
  const TotalPriceAndCheckOutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(16),
      decoration: BoxDecoration(
        borderRadius: .only(
          topLeft: .circular(8),
          topRight: .circular(8),
        ),
        color: AppColors.themeColor.withAlpha(40),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Column(
            crossAxisAlignment: .start,
            children: [
              Text('Total Price', style: TextStyle(fontWeight: .w700),),
              Text(
                '${Constants.takaSign}100',
                style: TextStyle(
                  color: AppColors.themeColor,
                  fontWeight: .bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 140,
            child: FilledButton(
              onPressed: () {},
              child: Text("Checkout"),
            ),
          ),
        ],
      ),
    );
  }
}