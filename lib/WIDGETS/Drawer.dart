import 'package:flutter/material.dart';
import 'package:play/DRAWERSCREENS/KidsCorerpage.dart';
import 'package:play/DRAWERSCREENS/LanguageSelect.dart';
import 'package:play/DRAWERSCREENS/PopularTV.dart';
import 'package:play/DRAWERSCREENS/ProfileDrawer.dart';
import 'package:play/DRAWERSCREENS/joners.dart';
import 'package:play/SIGN_IN/FIREBASE_AUTH/auth_service.dart';
import 'package:play/SIGN_IN/signin2.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool _isSigningOut = false;

  Route _routeToSignInScreen() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const SignInScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(-1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ListTile(
            title: const Text(
              "PROFILE",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const Profile();
                },
              ));
            },
          ),
          const Divider(
            color: Colors.white,
            height: 2,
            thickness: 1,
          ),
          ListTile(
            title: const Text(
              "LANGUAGE",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const LanguageSet(),
              ));
            },
          ),
          const Divider(
            color: Colors.white,
            height: 2,
            thickness: 1,
          ),
          ListTile(
            title: const Text(
              "JONERS",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const Joners();
                },
              ));
            },
          ),
          const Divider(
            color: Colors.white,
            height: 2,
            thickness: 1,
          ),
          ListTile(
            title: const Text(
              "POPULAR ON TV",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const PopularTv();
                },
              ));
            },
          ),
          const Divider(
            color: Colors.white,
            height: 2,
            thickness: 1,
          ),
          ListTile(
            title: const Text(
              "KIDS CORNER",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const KidCorner();
                },
              ));
            },
          ),
          const Divider(
            color: Colors.white,
            height: 2,
            thickness: 1,
          ),
          const SizedBox(height: 16.0),
          _isSigningOut
              ? const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: IconButton(
                      alignment: Alignment.bottomCenter,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xffF56200),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        setState(() {
                          _isSigningOut = true;
                        });
                        await Authentication.signOut(context: context);
                        setState(() {
                          _isSigningOut = false;
                        });
                        // ignore: use_build_context_synchronously
                        Navigator.of(context)
                            .pushReplacement(_routeToSignInScreen());
                      },
                      icon: const Icon(
                        Icons.logout,
                        color: Color(0xffF56200),
                      )),
                ),
          const Center(
            child: Text(
              "LogOut",
              style: TextStyle(
                color: Color(0xffF56200),
              ),
            ),
          )
        ],
      ),
    );
  }
}
