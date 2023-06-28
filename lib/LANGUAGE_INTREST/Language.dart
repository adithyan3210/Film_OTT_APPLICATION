import 'package:flutter/material.dart';
import 'package:play/LANGUAGE_INTREST/intrest.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  List<String> imagesList = [
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
  List<String> imagenamelist = [
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text(
          "Choose Language",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: GridView.builder(
          itemCount: imagesList.length,
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
                          image: AssetImage(imagesList[index]),
                          fit: BoxFit.cover)),
                ),
                Center(
                  child: Text(
                    imagenamelist[index],
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      bottomSheet: Container(
          height: 60,
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
                    'NEXT',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const Intrestscreen();
                      },
                    ));
                  },
                ),
              ),
              const SizedBox(width: 20),
              SizedBox(
                height: 45,
                width: 85,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color(0xffF56200)),
                          borderRadius: BorderRadius.circular(7))),
                  child: const Text(
                    'SKiP',
                    style: TextStyle(color: Color(0xffF56200), fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const Intrestscreen();
                      },
                    ));
                  },
                ),
              ),
            ],
          )),
    );
  }
}
