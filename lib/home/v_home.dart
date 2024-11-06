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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              controller.saveData();
            },
            icon: const Icon(Icons.save),
          ),
          IconButton(
            onPressed: () {
              controller.getData();
            },
            icon: const Icon(Icons.smart_display),
          ),
          IconButton(
            onPressed: () {
              controller.delete();
            },
            icon: const Icon(Icons.delete),
          ),
          SizedBox(width: Get.width)
        ],
      ),
    );
  }
}
