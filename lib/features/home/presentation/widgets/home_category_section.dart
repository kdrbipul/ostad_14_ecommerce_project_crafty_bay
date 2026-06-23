import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class HomeCategorySection extends StatelessWidget {
  const HomeCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: .horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                padding: .all(16),
                decoration: BoxDecoration(
                  color: AppColors.themeColor.withAlpha(50),
                  borderRadius: .circular(8),
                ),
                child: Icon(
                  Icons.computer,
                  size: 48,
                  color: AppColors.themeColor,
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
          );
        },
        separatorBuilder: (_, _) => SizedBox(width: 8),
      ),
    );
  }
}
