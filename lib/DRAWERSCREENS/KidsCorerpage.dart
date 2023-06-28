import 'package:flutter/material.dart';
import 'package:play/WIDGETS/searchpage.dart';

class KidCorner extends StatefulWidget {
  const KidCorner({super.key});

  @override
  State<KidCorner> createState() => _KidCornerState();
}

class _KidCornerState extends State<KidCorner> {
  List<String> kidsimageslist = [
    'assets/images/KidsImages/Kids1.png',
    'assets/images/KidsImages/Kids2.png',
    'assets/images/KidsImages/Kids3.png',
    'assets/images/KidsImages/Kids4.png',
    'assets/images/KidsImages/Kids5.png',
    'assets/images/KidsImages/Kids6.png',
    'assets/images/KidsImages/Kids7.png',
    'assets/images/KidsImages/Kids8.png',
    'assets/images/KidsImages/Kids9.png',
    'assets/images/KidsImages/Kids10.png',
    'assets/images/KidsImages/Kids11.png',
    'assets/images/KidsImages/Kids12.png',
    'assets/images/KidsImages/Kids13.png',
    'assets/images/KidsImages/Kids14.png',
    'assets/images/KidsImages/Kids15.png',
    'assets/images/KidsImages/Kids16.png',
    'assets/images/KidsImages/Kids17.png',
    'assets/images/KidsImages/Kids18.png',
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
            "Kids Corner",
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
            itemCount: kidsimageslist.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1 / 1.5,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                        image: AssetImage(kidsimageslist[index]),
                        fit: BoxFit.fill)),
              );
            },
          ),
        ));
  }
}
