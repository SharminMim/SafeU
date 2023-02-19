import 'package:demo/LoginPage.dart';
import 'package:demo/phoneBook.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

import 'alert.dart';

class WelcomePage extends StatefulWidget {
  String email;
  WelcomePage({super.key, required this.email});
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
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
                height: h * 0.16,
              ),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                radius: 60,
                backgroundImage: AssetImage("img/pro1.jpg"),
              ),
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "email",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    width: 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 178, 194, 221),
                    ),
                    child: (Text(
                      "   Father" + "\n  +01641122510",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () async {
                    UrlLauncher.launch('tel://+01641122510');
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("img/btn.jpg"),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Text(
                        "Call",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    width: 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 178, 194, 221),
                    ),
                    child: (Text(
                      "   Mother" + "\n  +01641122510",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () async {
                    UrlLauncher.launch('tel://+01641122510');
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("img/btn.jpg"),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Text(
                        "Call",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    width: 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 178, 194, 221),
                    ),
                    child: (Text(
                      "   Brother" + "\n  +01641122510",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () async {
                    UrlLauncher.launch('tel://+01641122510');
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("img/btn.jpg"),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Text(
                        "Call",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PhoneBookPage()),
              );
            },
            child: Container(
              width: w * 0.4,
              height: h * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 228, 63, 63),
              ),
              child: Center(
                child: Text(
                  "Phone Book",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AlertPage()),
              );
            },
            child: Container(
              width: w * 0.5,
              height: h * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 163, 38, 38),
              ),
              child: Center(
                child: const Text(
                  "Sent Alert",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RichText(
              text: TextSpan(
            text: "Sent alert or make an emergency call!!",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          )),
        ],
      ),
    );
  }
}
