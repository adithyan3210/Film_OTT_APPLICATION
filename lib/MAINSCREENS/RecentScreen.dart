import 'package:flutter/material.dart';
import 'package:play/WIDGETS/searchpage.dart';

class RecntScreen extends StatefulWidget {
  const RecntScreen({super.key});

  @override
  State<RecntScreen> createState() => _RecntScreenState();
}

class _RecntScreenState extends State<RecntScreen> {
  List<String> watchlaterimageslist = [
    'assets/images/WatchlaterImages/JaiBhim.png',
    'assets/images/WatchlaterImages/GanguBhai.png',
    'assets/images/WatchlaterImages/Batman.png',
    'assets/images/WatchlaterImages/JugJuggJeeyo.png',
  ];
  List<String> watchlateriCirtifivationlist = [
    '16+ | U/A',
    '18+ | U/A',
    '13+ | U/A',
    '13+ | U/A',
  ];
  List<String> watchlaterNamelist = [
    'Jai Bhim',
    'GanguBai',
    'BatMan',
    'JugJug Jeeyo',
  ];
  List<String> watchlaterDurationlist = [
    '3h 45m',
    '3h 23m',
    '3h 23m',
    '3h 20m',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, size: 30)),
        backgroundColor: Colors.black,
        title: const Text(
          "Recents",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ));
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: watchlaterimageslist.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              childAspectRatio: 5 / 2.5),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                          image: AssetImage(watchlaterimageslist[index]),
                          fit: BoxFit.fill)),
                ),
                Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_circle_outlined,
                        size: 35,
                        color: Colors.white,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      watchlaterNamelist[index],
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 5, right: 5, bottom: 2),
                    child: Row(
                      children: [
                        Text(
                          watchlateriCirtifivationlist[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                        const SizedBox(width: 25),
                        Text(
                          watchlaterDurationlist[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
