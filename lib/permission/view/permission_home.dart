import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Permission_home_screen extends StatefulWidget {
  const Permission_home_screen({Key? key}) : super(key: key);

  @override
  State<Permission_home_screen> createState() => _Permission_home_screenState();
}

class _Permission_home_screenState extends State<Permission_home_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            "Check All Permission",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //storage
              GestureDetector(
                onTap: () async {
                  var status = await Permission.storage.status;
                  if (status.isDenied) {
                    Permission.storage.request();
                  } else if (status.isRestricted ||
                      status.isDenied ||
                      status.isGranted) {
                    openAppSettings();
                  }
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade50,
                      border: Border.all(color: Colors.blue),
                      boxShadow: [
                        BoxShadow(color: Colors.blue.shade100, blurRadius: 5)
                      ]),
                  alignment: Alignment.center,
                  child: Text(
                    "Storage",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
              //audio
              GestureDetector(
                onTap: () async {
                  var status = await Permission.microphone.status;
                  if (status.isDenied) {
                    Permission.microphone.request();
                  } else if (status.isRestricted ||
                      status.isDenied ||
                      status.isGranted) {
                    openAppSettings();
                  }
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade50,
                      border: Border.all(color: Colors.blue),
                      boxShadow: [
                        BoxShadow(color: Colors.blue.shade100, blurRadius: 5)
                      ]),
                  alignment: Alignment.center,
                  child: Text(
                    "Audio",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
              //camera
              GestureDetector(
                onTap: () async {
                  var status = await Permission.camera.status;
                  if (status.isDenied) {
                    Permission.camera.request();
                  } else if (status.isRestricted ||
                      status.isDenied ||
                      status.isGranted) {
                    openAppSettings();
                  }
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade50,
                      border: Border.all(color: Colors.blue),
                      boxShadow: [
                        BoxShadow(color: Colors.blue.shade100, blurRadius: 5)
                      ]),
                  alignment: Alignment.center,
                  child: Text(
                    "Camera",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
              //Location
              GestureDetector(
                onTap: () async {
                  var status = await Permission.location.status;
                  if (status.isDenied) {
                    Permission.location.request();
                  } else if (status.isRestricted ||
                      status.isDenied ||
                      status.isGranted) {
                    openAppSettings();
                  }
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade50,
                      border: Border.all(color: Colors.blue),
                      boxShadow: [
                        BoxShadow(color: Colors.blue.shade100, blurRadius: 5)
                      ]),
                  alignment: Alignment.center,
                  child: Text(
                    "Location",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
              //internet
              GestureDetector(
                onTap: () async {
                  var status = await Permission.phone.status;
                  if (status.isDenied) {
                    Permission.phone.request();
                  } else if (status.isRestricted ||
                      status.isDenied ||
                      status.isGranted) {
                    openAppSettings();
                  }
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade50,
                      border: Border.all(color: Colors.blue),
                      boxShadow: [
                        BoxShadow(color: Colors.blue.shade100, blurRadius: 5)
                      ]),
                  alignment: Alignment.center,
                  child: Text(
                    "InterNet",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
              //contacts
              GestureDetector(
                onTap: () async {
                  var status = await Permission.contacts.status;
                  if (status.isDenied) {
                    Permission.contacts.request();
                  } else if (status.isRestricted ||
                      status.isDenied ||
                      status.isGranted) {
                    openAppSettings();
                  }
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade50,
                      border: Border.all(color: Colors.blue),
                      boxShadow: [
                        BoxShadow(color: Colors.blue.shade100, blurRadius: 5)
                      ]),
                  alignment: Alignment.center,
                  child: Text(
                    "Contacts",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
              //image
              GestureDetector(
                onTap: () async {
                  var status = await Permission.manageExternalStorage.status;
                  if (status.isDenied) {
                    Permission.manageExternalStorage.request();
                  } else if (status.isRestricted ||
                      status.isDenied ||
                      status.isGranted) {
                    openAppSettings();
                  }
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade50,
                      border: Border.all(color: Colors.blue),
                      boxShadow: [
                        BoxShadow(color: Colors.blue.shade100, blurRadius: 5)
                      ]),
                  alignment: Alignment.center,
                  child: Text(
                    "Media",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
              //app settings
              GestureDetector(
                onTap: () async {
                  openAppSettings();
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade50,
                      border: Border.all(color: Colors.blue),
                      boxShadow: [
                        BoxShadow(color: Colors.blue.shade100, blurRadius: 5)
                      ]),
                  alignment: Alignment.center,
                  child: Text(
                    "App Settings",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
