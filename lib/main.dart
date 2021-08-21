import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String fieldValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$fieldValue",
                          style:
                              TextStyle(color: Colors.black, fontSize: 17.4)),
                      TextFormField(
                        onChanged: (val) {
                          setState(() {
                            fieldValue = val;
                          });
                        },
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Enter your name",
                        style: TextStyle(color: Colors.blue[400]),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Powered by",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 36,
                            child: Image(image: AssetImage("assets/hng.JPG")),
                          ),
                          SizedBox(width: 7),
                          Container(
                            height: 36,
                            child: Image(image: AssetImage("assets/hng2.PNG")),
                          ),
                          SizedBox(width: 7),
                          Container(
                            height: 36,
                            child: Image(image: AssetImage("assets/zuri.JPG")),
                          )
                        ],
                      ),
                      SizedBox(height: 17),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Text(
                                "https://hng.tech",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.blue),
                              )),
                          SizedBox(width: 15),
                          InkWell(
                              onTap: () {},
                              child: Text(
                                "https://ingressive.org",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.blue),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
        ],
      ),
    )));
  }
}
