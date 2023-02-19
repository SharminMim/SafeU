import 'package:demo/auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var userController = TextEditingController();
    var phoneController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Safety Control System",
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Color.fromARGB(255, 74, 105, 121),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/1.jpg"), fit: BoxFit.cover)),
            child: Column(children: [
              SizedBox(
                height: h * 0.12,
              ),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                radius: 70,
                backgroundImage: AssetImage("img/pro1.jpg"),
              ),
            ]),
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    controller: userController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blueAccent,
                      ),
                      labelText: "User Name",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.blueAccent,
                      ),
                      labelText: "Phone Number",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.blueAccent,
                      ),
                      labelText: "Email",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.blueAccent,
                      ),
                      labelText: 'Password',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              AuthController.instance.register(
                  userController.text.trim(),
                  phoneController.text.trim(),
                  emailController.text.trim(),
                  passwordController.text.trim());
            },
            child: Container(
              width: w * 0.3,
              height: h * 0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage("img/btn.jpg"), fit: BoxFit.cover)),
              child: Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
              text: TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
            text: "Have you an account?",
            style: TextStyle(
              color: Color.fromARGB(255, 92, 92, 92),
              fontSize: 16,
            ),
          )),
          SizedBox(
            height: 20,
          ),
          RichText(
              text: TextSpan(
            text: "Sign up using one of the following methods",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ))
        ],
      ),
    );
  }
}
