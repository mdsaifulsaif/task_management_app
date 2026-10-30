import 'package:flutter/material.dart';
import 'package:task_management/screens/widgets/Navebar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // আলাদা করা কাস্টম অ্যাপবার এখানে কল করা হয়েছে
      appBar: const CustomAppBar(),
      body: const Center(
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
 