import 'package:flutter/material.dart';
import 'package:play/WIDGETS/searchpage.dart';

class DwnldScreen extends StatefulWidget {
  const DwnldScreen({super.key});

  @override
  State<DwnldScreen> createState() => _DwnldScreenState();
}

class _DwnldScreenState extends State<DwnldScreen> {
  List<String> downloadsimages = [
    'assets/images/DownloadIMAGES/ThiruchithrabalamDWNLDS.png',
    'assets/images/DownloadIMAGES/ZootopiaDWNLDS.png',
    'assets/images/DownloadIMAGES/SpidermanDWNLDS.png',
    'assets/images/DownloadIMAGES/ThallumalaDWNLDS.png',
  ];
  List<String> downloadsname = [
    'Thiruchithambalam',
    'Zootopia',
    'Spiderman Home coming',
    'Thallumaala',
  ];
  List<String> downloadsCirfication = [
    '13+ | U/A',
    '13+ | U/A',
    '13+ | U/A',
    '13+ | U/A',
  ];
  List<String> downloadsDuration = [
    '2h 23m',
    '2h 30m',
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
          "Downloads",
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
          itemCount: downloadsimages.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 12,
              childAspectRatio: 5 / 2.5),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                          image: AssetImage(downloadsimages[index]),
                          fit: BoxFit.fill)),
                ),
                const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 7, top: 5),
                    child: Icon(
                      Icons.video_camera_back,
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
                      downloadsname[index],
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
                          downloadsCirfication[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                        const SizedBox(width: 25),
                        Text(
                          downloadsDuration[index],
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
