import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locator/location/view/Location_Home_screen.dart';
import 'package:locator/permission/view/permission_home.dart';
import 'Home/Home_screen.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(p0) => Home_screen(),
        "phome":(p0) => Permission_home_screen(),
        "lhome":(p0) => LocationHomeScreen(),
      },
    ),
  );
}