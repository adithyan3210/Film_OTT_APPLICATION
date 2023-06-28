import 'package:flutter/material.dart';
import 'package:play/WIDGETS/Bottomnavigation.dart';

class Intrestscreen extends StatefulWidget {
  const Intrestscreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _IntrestscreenState createState() => _IntrestscreenState();
}

class _IntrestscreenState extends State<Intrestscreen> {
  List<String> items = [
    'Comedy',
    'Drama',
    'Horror',
    'Science fiction',
    'Thriller',
    'Western',
    'Crime film',
    'Narrative',
    'Romance',
    'Adventure',
    'Documentary',
    'Fiction',
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
        backgroundColor: Colors.black,
        title: const Text(
          "Select your Interest",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 4 / 1.5,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white, width: 2)),
                child: Center(
                  child: Text(
                    items[index],
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
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
                height: 40,
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
                        return const BottomBar();
                      },
                    ));
                  },
                ),
              ),
              const SizedBox(width: 20),
              SizedBox(
                height: 40,
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
                        return const BottomBar();
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
