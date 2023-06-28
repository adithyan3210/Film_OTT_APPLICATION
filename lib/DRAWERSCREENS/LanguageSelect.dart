import 'package:flutter/material.dart';
import 'package:play/WIDGETS/Bottomnavigation.dart';
import 'package:play/WIDGETS/searchpage.dart';

class LanguageSet extends StatefulWidget {
  const LanguageSet({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LanguageSetState createState() => _LanguageSetState();
}

class _LanguageSetState extends State<LanguageSet> {
  List<String> imagesList2 = [
    'assets/images/Malayaalam.jpg',
    'assets/images/hindi.png',
    'assets/images/english.png',
    'assets/images/tamil.png',
    'assets/images/kannada.png',
    'assets/images/telungu.png',
    'assets/images/punjabi.png',
    'assets/images/bengali.png',
    'assets/images/marati.png',
    'assets/images/sanskrith.png',
    'assets/images/sindhi.png',
    'assets/images/konkani.png',
    'assets/images/gujarati.png',
    'assets/images/kashmiri.png',
  ];
  List<String> imagenamelist2 = [
    'malayalam',
    'hindi',
    'english',
    'tamil',
    'kannada',
    'telungu',
    'punjabi',
    'bengali',
    'marati',
    'sanskrith',
    'sindhi',
    'konkani',
    'gujarati',
    'kashmiri',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, size: 30)),
        backgroundColor: Colors.black,
        title: const Text(
          "Choose Language",
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
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: GridView.builder(
          itemCount: imagesList2.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 4 / 2.3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                          image: AssetImage(
                            imagesList2[index],
                          ),
                          fit: BoxFit.cover)),
                ),
                Center(
                  child: Text(
                    imagenamelist2[index],
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      bottomSheet: Container(
          height: 50,
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 45,
                width: 85,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF56200),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  child: const Text(
                    'DONE',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const BottomBar();
                      },
                    ));
                  },
                ),
              ),
              const SizedBox(width: 20),
            ],
          )),
    );
  }
}
