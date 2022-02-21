import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = ["https://randomuser.me/api/portraits/men/0.jpg", ""];
    final List<Icon> _tabs = <Icon>[
      Icon(
        Icons.ac_unit,
        color: Colors.black,
      ),
      Icon(
        Icons.ac_unit_outlined,
        color: Colors.black,
      )
    ];
    return SafeArea(
      bottom: false,
      child: DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    child: Image.asset(
                                      "assets/images/avatar1.png",
                                      scale: 0.5,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 3),
                                        color: Colors.blue,
                                        shape: BoxShape.circle),
                                    height: 96,
                                    width: 96,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Column(
                                        children: [
                                          Text("54"),
                                          Text("Post"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Column(
                                        children: [
                                          Text("54"),
                                          Text("Follower"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Column(
                                        children: [
                                          Text("162"),
                                          Text("Following"),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Jacob West",
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  onEnter: (event) {},
                                  text: "Digital goodies designer @pixsellz \n",
                                  style: TextStyle(
                                      height: 3,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: "Everything is designed. ",
                                  style: TextStyle(color: Colors.black)),
                            ])),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                print("Test Edit Profile");
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(6)),
                                child: Center(
                                  child: Text(
                                    "Edit Profile",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      savedStory(),
                    ],
                  ),
                ),
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    backgroundColor: Colors.white,
                    toolbarHeight: 0,
                    pinned: true,
                    forceElevated: innerBoxIsScrolled,
                    bottom: TabBar(
                      tabs: _tabs.map((Icon name) => Tab(icon: name)).toList(),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: _tabs.map((Icon name) {
                return SafeArea(
                  top: false,
                  bottom: false,
                  child: Builder(
                    builder: (BuildContext context) {
                      return CustomScrollView(
                        key: PageStorageKey<Icon>(name),
                        slivers: <Widget>[
                          SliverOverlapInjector(
                            handle:
                                NestedScrollView.sliverOverlapAbsorberHandleFor(
                                    context),
                          ),
                          SliverPadding(
                            padding: const EdgeInsets.all(8.0),
                            sliver: SliverFixedExtentList(
                              itemExtent: 48.0,
                              delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                                  return ListTile(
                                    title: Text('Item $index'),
                                  );
                                },
                                childCount: 30,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  savedStory() {
    return SizedBox(
      height: 88,
      child: ListView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 81,
            width: 62,
            child: Column(
              children: [
                Container(
                  height: 62,
                  width: 62,
                  child: Center(child: Icon(Icons.add)),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFC7C7CC)),
                      color: Colors.white,
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("avatar"),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 30,
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
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://randomuser.me/api/portraits/men/$index.jpg")),
                              border: Border.all(color: Colors.white, width: 3),
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
        ],
      ),
    );
  }
}
