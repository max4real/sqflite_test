import 'package:get/get_state_manager/get_state_manager.dart';

import '../_services/database_helper.dart';

class HomeController extends GetxController {
  String name = "max";
  String email = "komyintmyatsoe@icloud.com";
  int age = 26;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void saveData() async {
    final dbHelper = DatabaseHelper();

    Map<String, dynamic> data = {
      "name": name,
      "email": email,
      "age": age,
    };
    try {
      await dbHelper.insertItem(data);
      print("Item inserted successfully!");
    } catch (e) {
      print(e);
    }
  }

  void getData() async {
    final dbHelper = DatabaseHelper();

    try {
      final result = await dbHelper.getItems();
      print(result);
    } catch (e) {
      print(e);
    }
  }

  void delete() async {
    final dbHelper = DatabaseHelper();

    try {
      await dbHelper.deleteItem(1);
      print("Deleted");
    } catch (e) {
      print(e);
    }
  }
}
