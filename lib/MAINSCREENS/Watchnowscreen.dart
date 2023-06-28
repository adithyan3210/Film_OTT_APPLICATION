import 'package:flutter/material.dart';
import 'package:play/WIDGETS/searchpage.dart';

class WatchNow extends StatefulWidget {
  const WatchNow({super.key});

  @override
  State<WatchNow> createState() => _WatchNowState();
}

class _WatchNowState extends State<WatchNow> {
  bool viewmore = false;
  IconData viewlessicon = Icons.keyboard_arrow_down;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Image.asset(
                    'assets/images/thiruchithram.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        iconSize: 30,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back)),
                    IconButton(
                        iconSize: 30,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SearchPage(),
                          ));
                        },
                        icon: const Icon(Icons.search)),
                  ],
                ),
                const Positioned(
                  top: 270,
                  child: Text(
                    'Thiruchitrambalam',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '13+ | U/A',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                SizedBox(width: 25),
                Text(
                  '2h 23m',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                SizedBox(width: 25),
                Text(
                  'Drama • Romance ',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_circle,
                      size: 30,
                      color: Color(0xffF56200),
                    )),
                const Padding(
                  padding: EdgeInsets.only(right: 60),
                  child: Text(
                    'Watch Now',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.file_download_outlined,
                      size: 30,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.access_time,
                      size: 30,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border_outlined,
                      size: 30,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share_outlined,
                      size: 30,
                      color: Colors.white,
                    )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Text(
                'Thiruchitrambalam is a 2022 Indian Tamil-language romantic comedy drama film written and directed by Mithran R.The film stars Dhanush, Nithya Menen, Bharathiraja, Prakash Raj, Raashii Khanna and Priya Bhavani Shankar. The soundtrack is composed by Anirudh Ravichander, with cinematography by Om Prakash and editing by Prasanna GK',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'More',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                      onPressed: () async {
                        if (viewmore) {}
                        if (!viewmore) {
                          setState(() {
                            viewlessicon = Icons.keyboard_arrow_down;
                            viewmore = true;
                          });
                        } else {
                          setState(() {
                            viewlessicon = Icons.keyboard_arrow_up;
                            viewmore = false;
                          });
                        }
                      },
                      icon: Icon(
                        viewlessicon,
                        color: Colors.white,
                        size: 35,
                      )),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                'Recommented',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            SizedBox(
              width: 600,
              height: 139,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 5),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: SizedBox(
                      height: 140,
                      width: 120,
                      child: Image.asset(
                        'assets/images/recommented/aniyathiprav.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: SizedBox(
                      height: 140,
                      width: 120,
                      child: Image.asset(
                        'assets/images/recommented/classmates.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: SizedBox(
                      height: 140,
                      width: 120,
                      child: Image.asset(
                        'assets/images/recommented/friends.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: SizedBox(
                      height: 140,
                      width: 120,
                      child: Image.asset(
                        'assets/images/recommented/happydays.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: SizedBox(
                      height: 140,
                      width: 120,
                      child: Image.asset(
                        'assets/images/recommented/niram.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: SizedBox(
                      height: 140,
                      width: 120,
                      child: Image.asset(
                        'assets/images/recommented/sitharaaaamam.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: SizedBox(
                      height: 140,
                      width: 120,
                      child: Image.asset(
                        "assets/images/thallumala.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
