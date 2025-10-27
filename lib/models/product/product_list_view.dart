import 'package:an_e_commerce_app/models/product/product.dart';
import 'package:an_e_commerce_app/models/product/product_list_tile.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
    required this.products,
    required this.scrollDirection,
    required this.height,
  });

  final List<Product> products;
  final Axis scrollDirection;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: scrollDirection == Axis.horizontal
          ? height
          : null, 
      child: ListView.builder(
        scrollDirection: scrollDirection,
        itemCount: products.length,
        itemBuilder: (context, index) =>
            ProductListTile(product: products[index]),
      ),
    );
  }
}
