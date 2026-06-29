import 'package:flutter/material.dart';
import 'package:ostad_14_ecommerce_project_crafty_bay/features/shared/presentation/widgets/product_card.dart';

class ProductListByCategoryScreen extends StatefulWidget {
  const ProductListByCategoryScreen({
    super.key,
    required this.categoryId,
    required this.categoryName,
  });

  static const String name = '/products';

  final String categoryId;
  final String categoryName;

  @override
  State<ProductListByCategoryScreen> createState() =>
      _ProductListByCategoryScreenState();
}

class _ProductListByCategoryScreenState
    extends State<ProductListByCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.categoryName)),
      body: GridView.builder(
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 4,
        ),
        itemBuilder: (context, index){
          return FittedBox(child: ProductCard());
        },
      ),
    );
  }
}
