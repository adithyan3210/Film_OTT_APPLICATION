import 'package:flutter/material.dart';
import 'package:play/WIDGETS/searchpage.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  List<String> favimageslist = [
    'assets/images/FavImages/Avatar.png',
    'assets/images/FavImages/Batman.png',
    'assets/images/FavImages/koiMilGaya.png',
    'assets/images/FavImages/RaadhaKrishn.png',
  ];
  List<String> faviCirtifivationlist = [
    '13+ | U/A',
    '15+ | U/A',
    '13+ | U/A',
    '13+ | U/A',
  ];
  List<String> favNamelist = [
    'Avatar',
    'Batman',
    'Koi Mil gaya',
    'Radha Krishna',
  ];
  List<String> favDurationlist = [
    '2h 23m',
    '3h 23m',
    '2h 10m',
    '2h 10m',
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
          "Favorites",
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
          itemCount: favimageslist.length,
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
                          image: AssetImage(favimageslist[index]),
                          fit: BoxFit.fill)),
                ),
                const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 7, top: 5),
                    child: Icon(
                      Icons.favorite_rounded,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
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
                      favNamelist[index],
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
                          faviCirtifivationlist[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                        const SizedBox(width: 25),
                        Text(
                          favDurationlist[index],
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
