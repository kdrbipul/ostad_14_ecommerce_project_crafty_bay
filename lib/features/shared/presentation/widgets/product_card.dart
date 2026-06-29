import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: .circular(8)),
      color: Colors.white,
      shadowColor: AppColors.themeColor.withAlpha(40),
      elevation: 2,
      child: SizedBox(
        width: 150,
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Container(
              height: 120,
              width: 150,
              decoration: BoxDecoration(
                color: AppColors.themeColor.withAlpha(30),
                borderRadius: .only(
                  topLeft: .circular(8),
                  topRight: .circular(8),
                ),
              ),
              child: Image.asset(AssetsPath.dummyPng),
            ),

            Padding(
              padding: const .all(8),
              child: Column(
                spacing: 4,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'Header of Product',
                    style: TextStyle(
                      fontWeight: .w600,
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        '\$300',
                        style: textTheme.bodyLarge?.copyWith(
                          fontWeight: .w600,
                          color: AppColors.themeColor,
                        ),
                      ),
                      Wrap(
                        spacing: 4,
                        children: [
                          Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.amber,
                            size: 18,
                          ),
                          Text('4.5'),
                        ],
                      ),
                      Container(
                        padding: .all(2),
                        decoration: BoxDecoration(
                          color: AppColors.themeColor.withAlpha(70),
                          borderRadius: .circular(6),
                        ),
                        alignment: .center,
                        child: Icon(
                          CupertinoIcons.heart,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}