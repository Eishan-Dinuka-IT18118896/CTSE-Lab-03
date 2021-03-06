import 'package:flutter/material.dart';
import 'package:labsheet_03/screens/cart.dart';
import 'package:labsheet_03/screens/home.dart';
import 'package:provider/provider.dart';
import 'providers/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'My Store',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        initialRoute: Home.routeName,
        routes: {
          Home.routeName: (context) => const Home(),
          Cart.routeName: (context) => const Cart(),
        },
      ),
    );
  }
}
