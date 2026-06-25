import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../app/app_colors.dart';
import '../../../shared/presentation/providers/main_nav_holder_provider.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_carousel_slider.dart';
import '../widgets/home_category_section.dart';
import '../widgets/product_search_bar.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Padding(
        padding: const .all(16),
        child: SingleChildScrollView(
          child: Column(
            spacing: 16,
            children: [
              ProductSearchBar(),
              HomeCarouselSlider(),
              SectionHeader(headerText: 'All Categories', onTapSeeAll: () {
                context.read<MainNavHolderProvider>().navigateToCategory();
              }),
              HomeCategorySection(),
              SectionHeader(headerText: 'Popular', onTapSeeAll: () {
                // context.read<MainNavHolderProvider>().navigateToCategory();
              }),
              Container(
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: .circular(8),
                ),
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
                      child: Image.asset('assets/images/shoes.png'),
                    ),
                    Text('Header of Product'),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text('\$300'),
                        Wrap(
                          children: [
                            Icon(CupertinoIcons.star),
                            Text('4.5')
                          ],
                        ),
                        Container(
                          child: Icon(CupertinoIcons.heart),
                        ),
                      ],
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


