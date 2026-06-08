import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String? badge; // null = tidak ada badge, isi string = tampilkan badge

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.badge,
  });
}

class ProductListPage extends StatelessWidget {
  ProductListPage({super.key});

  final List<Product> products = [
    Product(
      name: 'Wireless Headphones',
      description: 'High-quality noise-canceling headphones with up to 30 hours battery life.',
      price: 199.99,
      imageUrl: 'https://picsum.photos/200/300?random=1',
      badge: 'Best Seller',
    ),
    Product(
      name: 'Smartphone',
      description: 'Latest model.',
      price: 799.00,
      imageUrl: 'https://picsum.photos/200/220?random=2',
    ),
    Product(
      name: 'Laptop Pro',
      description: 'Powerful laptop for professionals. Equipped with the latest processor and long-lasting battery.',
      price: 1299.50,
      imageUrl: 'https://picsum.photos/200/260?random=3',
      badge: 'New',
    ),
    Product(
      name: 'Smart Watch',
      description: 'Track your fitness.',
      price: 149.99,
      imageUrl: 'https://picsum.photos/200/240?random=4',
    ),
    Product(
      name: 'Gaming Mouse',
      description: 'Ergonomic mouse with RGB lighting and adjustable DPI for precision gaming.',
      price: 59.90,
      imageUrl: 'https://picsum.photos/200/280?random=5',
      badge: 'Sale',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        backgroundColor: Colors.blueAccent,
      ),

      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 kolom
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.7, 
        ),
        itemBuilder:(context, index) {
          final product = products[index];
          return GestureDetector(
            onTap:() {
              Navigator.pushNamed(
                context, 
                '/product-detail', 
                arguments: product, // kirim data produk ke halaman detail
              );
            },
            child: Card(
              elevation: 4,
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    product.imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name, 
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(product.description),
                        Text(
                          '\$${product.price}',
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      )
    );
  }
}