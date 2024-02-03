import 'package:camera/camera.dart';
import 'package:chat_app/Screens/CameraScreen.dart';
import 'package:chat_app/Screens/Homescreen.dart';
import 'package:flutter/material.dart';

Future <void> main() async {
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Homescreen(),
    );
  }
}
