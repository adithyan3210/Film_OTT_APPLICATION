import 'package:flutter/material.dart';
import 'package:play/WELCOMESCREEN/welcomescreen3.dart';

class HomeMainScreen2 extends StatelessWidget {
  const HomeMainScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/jocker.png',
                fit: BoxFit.fill,
                height: 550,
                width: double.infinity,
              ),
              const Positioned.fill(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Watch your Favorite Movie',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ))),
            ],
          ),
          const SizedBox(
            height: 133,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xffF56200), width: 3),
                    borderRadius: BorderRadius.circular(13))),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const HomeMainScreen3();
                },
              ));
            },
            child: const Text(
              'NEXT',
              style: TextStyle(color: Color(0xffF56200)),
            ),
          ),
        ],
      ),
    ));
  }
}
