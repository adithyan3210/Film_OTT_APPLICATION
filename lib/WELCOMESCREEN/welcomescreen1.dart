import 'package:flutter/material.dart';
import 'package:play/WELCOMESCREEN/welcomescreen2.dart';

void main() => runApp(const HomeMainScreen());

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({super.key});

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
                'assets/images/spider.png',
                fit: BoxFit.fill,
                height: 500,
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
            height: 170,
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
                  return const HomeMainScreen2();
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
