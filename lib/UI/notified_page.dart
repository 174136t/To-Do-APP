import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotifiedPage extends StatelessWidget {
  final String? label;
  const NotifiedPage({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode ? Colors.grey[600] : Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? Colors.white : Colors.grey,
          ),
        ),
        title: Text(
          this.label.toString().split("|")[0],
          style: TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            color: Get.isDarkMode ? Colors.white : Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child:  Center(
            child: Text(
              this.label.toString().split("|")[1],
              style: TextStyle(color: Get.isDarkMode ? Colors.black : Colors.white,
              fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
