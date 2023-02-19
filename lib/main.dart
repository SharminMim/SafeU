import 'package:demo/auth.dart';
import 'package:demo/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'LoginPage.dart';
import 'signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCZwun6LRv6ThxIUItL3tNNPgnZ-ryANRg",
          appId: "1:1071293436710:web:cd2b932587db1c2e08a7e7",
          messagingSenderId: "1071293436710",
          projectId: "fir-getx-app-65557"));

  await Firebase.initializeApp().then(((value) => Get.put(AuthController())));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Demo",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage());
  }
}
