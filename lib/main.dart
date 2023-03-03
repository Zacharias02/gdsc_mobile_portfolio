import 'package:flutter/material.dart';
import 'package:gdsc_mobile_portfolio/portfolio_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDSC Mobile Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PortfolioScreen(),
    );
  }
}
