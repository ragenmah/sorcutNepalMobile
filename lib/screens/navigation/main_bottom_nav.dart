import 'package:flutter/material.dart';
import 'package:sortcutnepal/screens/add_post_screen.dart';
import 'package:sortcutnepal/screens/home_screen.dart';
import 'package:sortcutnepal/screens/profile_screen.dart';
import 'package:sortcutnepal/screens/wishlist_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  static const mainColor = Color(0xff5C75AA);
  static const whiteColor = Color(0xfffcfcfc);
  static const blackColor = Color(0xff0c0c0c);

  int currentTab = 0;

  var screens = const [
    HomeScreen(),
    HomeScreen(),
    WishlistScreen(),
    ProfileScreen(),
    AddPostScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: screens[currentTab],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentTab = 4;
          });
        },
        backgroundColor: const Color(0xff1965bf),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: whiteColor,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: mainColor,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        shadowColor: Colors.transparent,
        child: SizedBox(
          height: 20,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Material(
                color: mainColor,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentTab = 0;
                      });
                    },
                    child: currentTab == 0
                        ? const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home,
                                color: whiteColor,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(color: whiteColor),
                              ),
                              //const Padding(padding: EdgeInsets.all(10))
                            ],
                          )
                        : const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home,
                                color: blackColor,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(color: blackColor),
                              ),
                              //const Padding(padding: EdgeInsets.all(10))
                            ],
                          ),
                  ),
                ),
              ),
              Material(
                color: mainColor,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentTab = 1;
                      });
                    },
                    child: currentTab == 1
                        ? const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.group,
                                color: whiteColor,
                              ),
                              Text(
                                "Category",
                                style: TextStyle(color: whiteColor),
                              ),
                              //const Padding(padding: EdgeInsets.all(10))
                            ],
                          )
                        : const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.group,
                                color: blackColor,
                              ),
                              Text(
                                "Category",
                                style: TextStyle(color: blackColor),
                              ),
                              //const Padding(padding: EdgeInsets.all(10))
                            ],
                          ),
                  ),
                ),
              ),
              const SizedBox(), //to make space for the floating button
              Material(
                color: mainColor,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentTab = 2;
                      });
                    },
                    child: currentTab == 2
                        ? const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: whiteColor,
                              ),
                              Text(
                                "Wishlist",
                                style: TextStyle(color: whiteColor),
                              ),
                              //const Padding(padding: EdgeInsets.all(10))
                            ],
                          )
                        : const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: blackColor,
                              ),
                              Text(
                                "Wishlist",
                                style: TextStyle(color: blackColor),
                              ),
                              //const Padding(padding: EdgeInsets.all(10))
                            ],
                          ),
                  ),
                ),
              ),
              Material(
                color: mainColor,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentTab = 3;
                      });
                    },
                    child: currentTab == 3
                        ? const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: whiteColor,
                              ),
                              Text(
                                "Profile",
                                style: TextStyle(color: whiteColor),
                              ),
                              //const Padding(padding: EdgeInsets.all(10))
                            ],
                          )
                        : const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: blackColor,
                              ),
                              Text(
                                "Profile",
                                style: TextStyle(color: blackColor),
                              ),
                              //const Padding(padding: EdgeInsets.all(10))
                            ],
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}