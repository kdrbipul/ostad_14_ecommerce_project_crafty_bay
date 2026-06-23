import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: 'Search',
        hintStyle: TextStyle(color: Colors.grey),
        fillColor: Colors.grey.withAlpha(50),
        prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey,),
        border: OutlineInputBorder(
          borderSide: .none,
          borderRadius: .circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: .none,
          borderRadius: .circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: .none,
          borderRadius: .circular(10),
        ),
      ),
    );
  }
}
