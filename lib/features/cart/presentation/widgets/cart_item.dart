import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';
import '../../../../app/constants.dart';
import '../../../shared/presentation/widgets/increment_decrement_button.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: .symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AssetsPath.dummyPng, width: 120),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const .symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              'Title of Product',
                              style: textTheme.titleMedium,
                            ),
                            Text('Color: Red  Size: XL'),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.delete),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        '${Constants.takaSign}100',
                        style: TextStyle(
                          color: AppColors.themeColor,
                          fontWeight: .bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 70,
                        child: IncrementDecrementButton(
                          maxCount: 20,
                          minCount: 1,
                          initialValue: 1,
                          onChange: (int value){
                            print('value');
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}