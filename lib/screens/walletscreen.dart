import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powersound/screens/GridItem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const Text(
            '₱2.00',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,

            ),
          ),
          const Text(
            'Wallet balance',
            style: TextStyle(color: Colors.grey),
          ),
          GridView.count(
            padding: const EdgeInsets.all(20),
            shrinkWrap: true,
            crossAxisCount: 3,
            children: const [
              GridItem(icon: Icons.add, label: "DSADAS", targetScreen: HomeScreen()),
              GridItem(icon: Icons.add, label: "DSADAS", targetScreen: HomeScreen()),
              GridItem(icon: Icons.add, label: "DSADAS", targetScreen: HomeScreen()),
              GridItem(icon: Icons.add, label: "DSADAS", targetScreen: HomeScreen()),
              GridItem(icon: Icons.add, label: "DSADAS", targetScreen: HomeScreen()),
              GridItem(icon: Icons.add, label: "DSADAS", targetScreen: HomeScreen()),
              GridItem(icon: Icons.add, label: "DSADAS", targetScreen: HomeScreen()),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildGridItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          splashColor: Colors.blue.shade400.withOpacity(0.15),
          highlightColor: Colors.blueAccent.shade200.withOpacity(0.25),
          splashFactory: InkRipple.splashFactory,
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          onTap: () {
            // Handle tap event here
          },
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue.shade500.withOpacity(0.135),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Icon(icon, size: 40),
          ),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }}