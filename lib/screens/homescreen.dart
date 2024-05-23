import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    // Use the exact name of your animation from the Rive editor
    _controller = SimpleAnimation('Timeline 1', autoplay: false);
    _startAnimation();
  }

  Future<void> _startAnimation() async {
    print("Animation will start in 15 seconds");
    await Future.delayed(Duration(seconds: 15)); // Delay for 15 seconds
    setState(() {
      print("Activating the animation controller");
      _controller.isActive = true; // Activate the controller to start the animation
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: RiveAnimation.asset(
          'assets/animations/loadingscreen.riv', // Corrected path
          controllers: [_controller], // Add the controller
        ),
      ),
    );
  }
}
