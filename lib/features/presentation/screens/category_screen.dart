import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_14_ecommerce_project_crafty_bay/features/shared/presentation/providers/main_nav_holder_provider.dart';
import 'package:provider/provider.dart';

import '../../shared/presentation/widgets/category_card.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_,_)=> _backToHome(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Category'),
          leading: IconButton(onPressed: _backToHome, icon: Icon(CupertinoIcons.arrow_left)),
        ),
        body: Padding(
          padding: const .symmetric(horizontal: 8),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                mainAxisSpacing: 4
              ),
              itemBuilder: (context, index){
                return FittedBox(child: CategoryCard());

              }),
        ),
      ),
    );
  }

  void _backToHome(){
    context.read<MainNavHolderProvider>().backToHome();
  }
}
