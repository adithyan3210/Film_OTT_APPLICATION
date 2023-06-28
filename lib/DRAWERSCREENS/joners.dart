import 'package:flutter/material.dart';
import 'package:play/WIDGETS/searchpage.dart';

class Joners extends StatefulWidget {
  const Joners({super.key});

  @override
  State<Joners> createState() => _JonersState();
}

class _JonersState extends State<Joners> {
  List<String> jonersimagelist = [
    'assets/images/Jonerscomedy.png',
    'assets/images/Jonersdrama.png',
    'assets/images/Jonershorror.png',
    'assets/images/JonersSCFic.png',
    'assets/images/JonersThrillr.png',
    'assets/images/JonersVestern.png',
    'assets/images/JonersCrime.png',
    'assets/images/JonersNarative.png',
    'assets/images/JonersRomance.png',
    'assets/images/JonersADV.png',
    'assets/images/JonersDocmntry.png',
    'assets/images/JonersFiction.png',
    'assets/images/JonersHistry.png',
    'assets/images/JonersMusical.png',
    'assets/images/JonersFantacy.png',
    'assets/images/JonersAnimation.png',
    'assets/images/JonersFamily.png',
  ];
  List<String> jonersnamelist = [
    'Comedy',
    'Drama',
    'Horror',
    'Science Fiction',
    'Thriller',
    'Western',
    'Crime Film',
    'Narrative',
    'Romance',
    'Adventure',
    'Documantry',
    'Fiction',
    'History',
    'Musical',
    'Fantacy',
    'Animation',
    'Family',
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
          "Joners",
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
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
          top: 8,
          bottom: 8,
        ),
        child: GridView.builder(
          itemCount: jonersimagelist.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1 / 1.1,
          ),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(jonersimagelist[index]),
                          fit: BoxFit.cover)),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    jonersnamelist[index],
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
