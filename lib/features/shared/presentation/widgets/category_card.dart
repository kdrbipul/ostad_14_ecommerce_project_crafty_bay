import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../products/presentation/screens/product_list_by_category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, ProductListByCategoryScreen.name, arguments: {
          'categoryId' : "abdk-kejr",
          'categoryName' : 'Electronics'
        });
      },
      child: Column(
        children: [
          Card(
            child: Container(
              padding: .all(16),
              decoration: BoxDecoration(
                color: AppColors.themeColor.withAlpha(20),
                borderRadius: .circular(8),
              ),
              child: Icon(
                Icons.computer,
                size: 48,
                color: AppColors.themeColor,
              ),
            ),
          ),
          Text(
            'Electronics',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.themeColor,
            ),
          ),
        ],
      ),
    );
  }
}