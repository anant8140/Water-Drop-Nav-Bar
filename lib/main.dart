import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Water Drop Nav Bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: WaterDropNavBar(
            waterDropColor: Colors.black,
            barItems: [
              BarItem(filledIcon: Icons.home, outlinedIcon: Icons.home_outlined),
              BarItem(filledIcon: Icons.access_time_filled, outlinedIcon: Icons.access_time_outlined),
              BarItem(filledIcon: Icons.paid, outlinedIcon: Icons.paid_outlined),
              BarItem(filledIcon: Icons.account_balance_wallet, outlinedIcon: Icons.account_balance_wallet_outlined),
            ],
            selectedIndex: selectedIndex,
            onItemSelected: (index) {
              setState(() {
                selectedIndex = index;
              });
            }),
      ),
    );
  }
}
