import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class AlertPage extends StatefulWidget {
  const AlertPage({super.key});

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
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
            height: 140,
            width: w,
            alignment: Alignment.center,
            color: Color.fromARGB(255, 181, 37, 37),
            child: Center(
              child: (Text(
                "Emergency Help",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Color.fromARGB(255, 181, 37, 37)),
              )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    width: 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
                    child: Center(
                      child: (Text(
                        "Police " + " +999",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          backgroundColor: Colors.blueAccent,
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () async {
                    UrlLauncher.launch('tel://+999');
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
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
                  width: 50,
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    width: 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
                    child: Center(
                      child: (Text(
                        "Govt. Services " + " +333",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          backgroundColor: Colors.blueAccent,
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () async {
                    UrlLauncher.launch('tel://+333');
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
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
                  width: 50,
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    width: 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
                    child: Center(
                      child: (Text(
                        "BD. Police " + " +100",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          backgroundColor: Colors.blueAccent,
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () async {
                    UrlLauncher.launch('tel://+100');
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
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
                  width: 50,
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    width: 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
                    child: Center(
                      child: (Text(
                        "Indentity " + " +105",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          backgroundColor: Colors.blueAccent,
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () async {
                    UrlLauncher.launch('tel://+105');
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
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
                  width: 50,
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    width: 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
                    child: Center(
                      child: (Text(
                        "Legal Assistance " + " +16430",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          backgroundColor: Colors.blueAccent,
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () async {
                    UrlLauncher.launch('tel://+16430');
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
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
        ],
      ),
    );
  }
}
