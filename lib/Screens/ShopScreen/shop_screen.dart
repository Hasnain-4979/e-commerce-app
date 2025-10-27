import 'package:an_e_commerce_app/models/product/product.dart';
import 'package:an_e_commerce_app/models/product/product_list_view.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        title: "Churros",
        price: 999,
        imgePath: "assets/images/churros.jpg",
      ),
      Product(
        title: "Cookie",
        price: 499,
        imgePath: "assets/images/cookie.jpg",
      ),
      Product(title: "Coupe", price: 799, imgePath: "assets/images/coupe.jpg"),
      Product(
        title: "Eggnet",
        price: 299,
        imgePath: "assets/images/eggnet.jpg",
      ),
      Product(
        title: "Burger",
        price: 399,
        imgePath: "assets/images/burger.jpg",
      ),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Popular Products",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ProductListView(
                products: products,
                scrollDirection: Axis.vertical,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
