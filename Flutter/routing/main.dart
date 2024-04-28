import 'package:flutter/material.dart';
import 'product.dart';
import 'order.dart';
import 'confirm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/product', // Specify the initial route
      routes: {
        '/product': (context) => ProductPage(),
        '/order': (context) => OrderPage(),
        '/confirm': (context) => ConfirmPage(),
      },
    );
  }
}
