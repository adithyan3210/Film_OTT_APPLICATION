// ignore: file_names

import 'package:flutter/material.dart';
import 'package:play/MAINSCREENS/Watchnowscreen.dart';
import 'package:play/WIDGETS/Drawer.dart';
import 'package:play/WIDGETS/searchpage.dart';

class HomeOne extends StatefulWidget {
  const HomeOne({super.key});

  @override
  State<HomeOne> createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ));
                },
                icon: const Icon(Icons.search)),
            const SizedBox(width: 15),
          ],
        ),
        drawer: const Drawer(
          child: DrawerWidget(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      height: 250,
                      "assets/images/2018big.jpg",
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Watch Now',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const WatchNow(),
                          ));
                        },
                        icon: const Icon(
                          Icons.play_circle,
                          size: 25,
                          color: Color(0xffF56200),
                        ))
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "New Release",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.arrow_right_alt_sharp,
                        color: Colors.white,
                        size: 25,
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 600,
                        height: 139,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(width: 5),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 140,
                                width: 120,
                                child: Image.asset(
                                  "assets/images/2018.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 140,
                                width: 120,
                                child: Image.asset(
                                  "assets/images/casekod.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 140,
                                width: 120,
                                child: Image.asset(
                                  "assets/images/thallumala.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 140,
                                width: 120,
                                child: Image.asset(
                                  "assets/images/sitaramam.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Continue watching",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.arrow_right_alt_sharp,
                              color: Colors.white,
                              size: 25,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 595,
                        height: 130,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(width: 5),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 140,
                                width: 200,
                                child: Image.asset(
                                  "assets/images/Cntinu1.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 140,
                                width: 200,
                                child: Image.asset(
                                  "assets/images/Cntinu2.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 140,
                                width: 200,
                                child: Image.asset(
                                  "assets/images/Cntinu3.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Coming Soon",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.arrow_right_alt_sharp,
                              color: Colors.white,
                              size: 34,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 600,
                        height: 139,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(width: 5),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 140,
                                width: 120,
                                child: Image.asset(
                                  "assets/images/Comingsoonimages/Comingsoon1.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 140,
                                width: 120,
                                child: Image.asset(
                                  "assets/images/Comingsoonimages/Comingsoon3.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 140,
                                width: 120,
                                child: Image.asset(
                                  "assets/images/Comingsoonimages/Comingsoon2.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: SizedBox(
                                height: 140,
                                width: 120,
                                child: Image.asset(
                                  "assets/images/2018.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
