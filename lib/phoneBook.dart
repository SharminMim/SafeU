import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class PhoneBookPage extends StatefulWidget {
  const PhoneBookPage({super.key});

  @override
  State<PhoneBookPage> createState() => _PhoneBookPageState();
}

class _PhoneBookPageState extends State<PhoneBookPage> {
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
            height: 80,
            width: w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("img/btn.jpg"), fit: BoxFit.cover)),
            child: Center(
              child: (Text(
                "Contacts",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
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
                      "   Mother" + "\n  +01741122510",
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
                    UrlLauncher.launch('tel://+01741122510');
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
                        color: Color.fromARGB(255, 178, 194, 221)),
                    child: (Text(
                      "   Sister" + "\n +01745678910",
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
                    UrlLauncher.launch('tel://+01745678910');
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
                      "   Brother" + "\n  +01745678910",
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
                    UrlLauncher.launch('tel://+01745678910');
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
                      "   ABCD" + "\n +01712345678",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () async {
                    UrlLauncher.launch('tel://+01712345678');
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
                      "   Abc" + "\n  +01745678910",
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
                    UrlLauncher.launch('tel://+01745678910');
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
        ],
      ),
    );
  }
}
