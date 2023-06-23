import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:locator/permission/controller/PermissionController.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {

  PermissionController controller = Get.put(PermissionController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed("phome");
                },
              child: Container(
                height: 60,
                width:175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade50,
                    border: Border.all(color: Colors.blue),
                    boxShadow: [BoxShadow(color: Colors.blue.shade100,blurRadius: 10)]
                ),
                alignment: Alignment.center,
                child: Text("Get Permission",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed("lhome");
              },
              child: Container(
                height: 60,
                width:175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade50,
                    border: Border.all(color: Colors.blue),
                    boxShadow: [BoxShadow(color: Colors.blue.shade100,blurRadius: 10)]
                ),
                alignment: Alignment.center,
                child: Text("Get Live Location",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
            ),
          ],
        ),
      ),
    ),);
  }
}
