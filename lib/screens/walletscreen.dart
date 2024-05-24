import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:powersound/screens/CustomFloatingActionButton.dart';
import 'package:powersound/screens/GridItem.dart';
import 'package:powersound/screens/ProductItemSummary.dart';
import 'package:powersound/screens/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.995),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(21, 10, 21, 10),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blueAccent.shade400.withOpacity(0.06),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.account_circle_outlined),
                      iconSize: 30,
                      onPressed: () {},
                    ),
                  ),
                  Text(
                    "Powersound",
                    style: TextStyle(
                      color: Colors.blueAccent.shade700.withOpacity(0.85),
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blueAccent.shade700.withOpacity(0.06),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.message_outlined),
                      iconSize: 30,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height:10),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: Colors.white,
                  elevation: 1,
                  borderOnForeground: true,
                  surfaceTintColor: Colors.white,
                  shadowColor: Colors.blueAccent.shade400,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                              size: 30,
                              color: Colors.black87.withOpacity(0.85),
                            ),
                            const SizedBox(width: 10),
                            Text("32 PENDING ORDERS",
                                style: TextStyle(
                                    color: Colors.black87.withOpacity(0.85),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(width: 5),
                            InkWell(
                              onTap: () {
                                print("Text clicked");
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "today orders: ",
                                    style: TextStyle(
                                      color: Colors.black87.withOpacity(0.85),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "5",
                                    style: TextStyle(
                                      color: Colors.blueAccent.shade700.withOpacity(0.85),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 155, // Specify the width of the button
                              height: 40, // Specify the height of the button
                              child: ElevatedButton(
                                style: AppStyles.buttonStyle,
                                onPressed: () => {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.view_list,
                                      color: Colors.white.withOpacity(0.85),
                                      size: 20,
                                    ),
                                    const SizedBox(width: 7),
                                    const Text("View Orders", style: AppStyles.buttonTextStyle),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 155, // Specify the width of the button
                              height: 40,
                              child: ElevatedButton(
                                  style: AppStyles.buttonStyle,
                                  onPressed: () => {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.download,
                                        color: Colors.white.withOpacity(0.85),
                                        size: 20,
                                      ),
                                      const SizedBox(width: 7),
                                      Text("Download ", style: AppStyles.buttonTextStyle),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                children: const [
                  GridItem(
                      icon: Icons.inventory_2_outlined,
                      label: "Orders",
                      targetScreen: HomeScreen()),
                  GridItem(
                      icon: Icons.payment_outlined,
                      label: "Transactions",
                      targetScreen: HomeScreen()),
                  GridItem(
                      icon: Icons.warehouse_outlined,
                      label: "Inventory",
                      targetScreen: HomeScreen()),
                  GridItem(
                      icon: Icons.analytics_outlined,
                      label: "Analytics",
                      targetScreen: HomeScreen()),
                  GridItem(
                      icon: Icons.feedback_outlined,
                      label: "Feedback",
                      targetScreen: HomeScreen()),
                  GridItem(
                      icon: Icons.people_outline,
                      label: "Team Notes",
                      targetScreen: HomeScreen()),
                ],
              ),
              SizedBox(height:10),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Colors.white,
                elevation: 2,
                borderOnForeground: true,
                surfaceTintColor: Colors.white,
                shadowColor: Colors.blueAccent.shade400,
                child: Container(
                  width: screenwidth * 0.9,
                  height: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Text("Orders Summary",
                                style: TextStyle(
                                    color: Colors.black87.withOpacity(0.85),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                            Text("See all",
                                style: TextStyle(
                                    color: Colors.blueAccent.shade700.withOpacity(0.85),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600)),
                          ]
                        ),
                        SizedBox(height: 10),
                        ProductItemSummary(productName: "ABC 123 LOVELY ADSDasdas asjidfjia sjid jiasdjio", quantity: "3"),
                        ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: screenwidth * 0.55,
        margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.blueAccent.shade700.withOpacity(0.92),
          boxShadow: [
            BoxShadow(
              color: Colors.black87.withOpacity(0.01),
              spreadRadius: 4,
              blurRadius: 5,
              offset: const Offset(2, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFloatingActionButton(iconData: Icons.speaker_notes, onPressed: () {},),
            const SizedBox(width: 12), // Spacing between buttons
            CustomFloatingActionButton(iconData: Icons.qr_code_scanner, onPressed: () {},),
            const SizedBox(width: 12), // Spacing between buttons
            CustomFloatingActionButton(iconData: Icons.settings, onPressed: () {},),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
