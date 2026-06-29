import 'package:flutter/material.dart';

import '../../../../app/assets_path.dart';
import '../widgets/total_price_and_checkout_section.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: 4,
              itemBuilder: (context, index){
              return Card(
                child: Row(
                  children: [
                    Image.asset(AssetsPath.dummyPng, width: 120,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Column()
                          ],
                        ),
                        Row(),
                      ],
                    )
                  ],
                ),
              );
              }
          ),
          ),
          TotalPriceAndCheckOutSection(),
        ],
      ),
    );
  }
}


