import 'package:flutter/material.dart';
import 'package:flutter_application_1/darkmode.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  List<Widget> navigationbar = [
    Text("access_time"),
    Text("business"),
    Text("person"),
  ];
  int _inDex1 = 0;
  void _ontap(int index) {
    setState(() {
      _inDex1 = index;
    });
  }

  var dark = false;
  var appText = "";
  String ad = Darkmode.toggleDark;
  void darkCall() async {
    var sharedPrefe = await SharedPreferences.getInstance();
    var dark = sharedPrefe.getBool(ad);
    if (dark != null && dark) {
      setState(() {
        appText = "true to app";
      });
    } else {
      setState(() {
        appText = "false to app";
      });
    }
  }

  @override
  void initState() {
    darkCall();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          appText,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    Darkmode obj1 = Darkmode();
                    obj1.setDarkMode();
                  },
                  child: const Text("darkmode")),
              navigationbar[_inDex1],
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 120,
                    child: const Center(
                        child: Text(
                      "Insomina",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 120,
                    child: const Center(
                        child: Text(
                      "Depression",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 120,
                    child: const Center(
                        child: Text(
                      "Baby Sleep",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(color: Colors.white38),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "Sleep Meditation",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "7 Day Auto Seeries",
                              style: TextStyle(color: Colors.white38),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.headphones,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.movie_creation_rounded,
                                  color: Colors.white,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[400]),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink[300]),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow[300]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Recent",
                    style: TextStyle(color: Colors.white38),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Claming",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "Sounds",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Spacer(),
                          Icon(
                            Icons.headphones,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Insomnia",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Spacer(),
                          Icon(
                            Icons.movie_creation_rounded,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink[300]),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "For ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "Children",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow[300]),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tips for",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "Sleeping",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[400]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.access_time,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: ""),
        ],
        currentIndex: _inDex1,
        selectedIconTheme: IconThemeData(color: Colors.red),
        unselectedIconTheme: IconThemeData(color: Colors.amber),
        selectedItemColor: Colors.grey,
        onTap: _ontap,
      ),
    );
  }
}
