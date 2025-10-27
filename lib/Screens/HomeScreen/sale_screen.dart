import 'package:an_e_commerce_app/Screens/AccountScreen/account_screen.dart';
import 'package:an_e_commerce_app/Screens/BuyScreen/buy_screen.dart';
import 'package:an_e_commerce_app/Screens/CartScreen/cart_screen.dart';
import 'package:an_e_commerce_app/Screens/ShopScreen/shop_screen.dart';
import 'package:an_e_commerce_app/models/product/product.dart';
import 'package:an_e_commerce_app/models/product/product_list_view.dart';
import 'package:flutter/material.dart';

class SaleScreen extends StatefulWidget {
  const SaleScreen({super.key});

  @override
  State<SaleScreen> createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen> {
  int _selectedIndex = 0;

  final List<Product> products = [
    Product(title: "Audi", price: 11111111, imgePath: "assets/images/audi.jpg"),
    Product(
      title: "Audi R8",
      price: 12222222,
      imgePath: "assets/images/audii.jpg",
    ),
    Product(
      title: "Audi GT",
      price: 13333333,
      imgePath: "assets/images/audiii.jpg",
    ),
    Product(
      title: "BMW Classic",
      price: 9000000,
      imgePath: "assets/images/bmwold.png",
    ),
    Product(
      title: "Civic",
      price: 8500000,
      imgePath: "assets/images/carblack.jpg",
    ),
    Product(
      title: "Chevrolet",
      price: 7500000,
      imgePath: "assets/images/chevrolet.jpg",
    ),
    Product(
      title: "Coupe",
      price: 7800000,
      imgePath: "assets/images/coupe.jpg",
    ),
    Product(
      title: "Ferrari",
      price: 22000000,
      imgePath: "assets/images/ferari.jpg",
    ),
  ];

  late final List<Widget> _screens;

  final List<String> _titles = [
    "WELCOME TO SENTO",
    "SHOP",
    "BUY NOW",
    "YOUR CART",
    "ACCOUNT",
  ];

  @override
  void initState() {
    super.initState();
    _screens = [
      _buildSaleTab(),
      const ShopScreen(),
      const BuyScreen(),
      const CartScreen(),
      const AccountScreen(),
    ];
  }

  Widget _buildSaleTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: "Search Here",
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Flash Sale",
            style: TextStyle(
              fontSize: 26,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ProductListView(
            products: products,
            scrollDirection: Axis.horizontal,
            height: 230, 
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          _titles[_selectedIndex],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: IndexedStack(index: _selectedIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.electric_bolt_rounded),
            label: 'Sale',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.flash_on), label: 'Buy'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
