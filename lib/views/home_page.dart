import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(),
      body: Column(
        children: [
          SizedBox(
            height: 88,
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
                                border:
                                    Border.all(color: Colors.white, width: 3),
                                color: Colors.blue,
                                shape: BoxShape.circle),
                            height: 58,
                            width: 58,
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
          ),
          postListView(),
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

  Container postListView() => Container(
        height: 563,
        width: double.infinity,
        child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return post();
            }),
      );

  Container post() => Container(
        height: 620,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Image.asset(
                              "assets/images/avatar1.png",
                              scale: 1.2,
                            )),
                        Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "User_name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.check)
                                  ],
                                ),
                                Row(
                                  children: [Text("location")],
                                )
                              ],
                            )),
                        Expanded(child: Icon(Icons.more_horiz))
                      ],
                    ),
                    color: Colors.white)),
            sliderPost(),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Icon(Icons.favorite_border),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Icon(Icons.mode_comment),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Icon(Icons.send_sharp),
                              ),
                            ],
                          ),
                        ),
                        Expanded(flex: 3, child: Icon(Icons.more_horiz)),
                        Expanded(
                            flex: 3,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Icon(Icons.save_alt_sharp),
                              ),
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/avatar1.png",
                            height: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Liked by "),
                          Text(
                            "craig_love",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(" and "),
                          Text(
                            "44,686",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(" other"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            onEnter: (event) {},
                            text: "joshua_l ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                "The game in Japan was amazing and I want to share some photos",
                            style: TextStyle(color: Colors.black)),
                      ])),
                    )
                  ],
                ))
          ],
        ),
      );

  Expanded sliderPost() {
    return Expanded(
      flex: 5,
      child: Container(
        child: Stack(
          children: [
            PageView.builder(
                itemCount: 10,
                onPageChanged: (value) {
                  setState(() {
                    sliderIndex = value + 1;
                  });
                  print(value);
                },
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    width: 200,
                    child: Image.asset(
                      "assets/images/post1.png",
                      fit: BoxFit.cover,
                    ),
                    color: Colors.black,
                  );
                }),
            Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.black.withOpacity(0.6)),
                  child: Text(
                    "$sliderIndex/10",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ))
          ],
        ),
        color: Colors.black,
      ),
    );
  }
}
