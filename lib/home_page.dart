import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(),
      body: Column(
        children: [
          SizedBox(
            height: 98,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 81,
                  width: 62,
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 62,
                            width: 62,
                            decoration: BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                          ),
                          Container(
                            child: Image.asset("assets/images/avatar1.png"),
                            decoration: BoxDecoration(
                                color: Colors.blue, shape: BoxShape.circle),
                            height: 56,
                            width: 56,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("avatar"),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  AppBar customAppbar() => AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.camera_alt_outlined),
          onPressed: () {
            print("camera");
          },
        ),
        centerTitle: true,
        title: Text("Instagram",
            style: TextStyle(
              fontFamily: "Billabong",
              fontSize: 30,
            )),
        actions: [
          IconButton(
              onPressed: () {
                print("live");
              },
              icon: Icon(Icons.live_tv_outlined)),
          IconButton(
              onPressed: () {
                print("send");
              },
              icon: Icon(Icons.send))
        ],
      );
}
