import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite_test/home/c_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.save),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.smart_display),
          ),
          const SizedBox()
        ],
      ),
    );
  }
}
