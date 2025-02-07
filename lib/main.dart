import 'package:flutter/material.dart';
import 'screens/pixel_screen.dart';
import 'screens/laptop_screen.dart';
import 'screens/tablet_screen.dart';
import 'screens/pendrive_screen.dart';
import 'screens/floppy_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductNavigation(),
      routes: {
        '/pixel': (context) => PixelScreen(),
        '/laptop': (context) => LaptopScreen(),
        '/tablet': (context) => TabletScreen(),
        '/pendrive': (context) => PendriveScreen(),
        '/floppy': (context) => FloppyScreen(),
      },
    );
  }
}

class ProductNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Navigation'),
      ),
      body: ListView(
        children: [
          ProductCard(
            title: 'pixel 1',
            description: 'Pixel is the most featureful phone ever',
            price: 800,
            color: Colors.blue,
            route: '/pixel',
          ),
          ProductCard(
            title: 'laptop',
            description: 'Laptop is most productive development tool',
            price: 2000,
            color: Colors.green,
            route: '/laptop',
          ),
          ProductCard(
            title: 'tablet',
            description: 'Tablet is the most useful device for meeting',
            price: 1500,
            color: Colors.amber,
            route: '/tablet',
          ),
          ProductCard(
            title: 'pen drive',
            description: 'iPhone is the stylist phone ever',
            price: 100,
            color: Colors.deepOrange,
            route: '/pendrive',
          ),
          ProductCard(
            title: 'Floppy Drive',
            description: 'Floppy is the stylist phone ever',
            price: 100,
            color: Colors.teal,
            route: '/floppy',
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final double price;
  final Color color;
  final String route;

  const ProductCard({
    required this.title,
    required this.description,
    required this.price,
    required this.color,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              color: color,
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title.toUpperCase(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(description),
                    Text('Price: \$${price.toStringAsFixed(0)}'),
                    Row(
                      children: [
                        Icon(Icons.star_border, color: Colors.red),
                        Icon(Icons.star_border, color: Colors.red),
                        Icon(Icons.star_border, color: Colors.red),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
