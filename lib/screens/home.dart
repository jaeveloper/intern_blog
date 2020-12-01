import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:intern_blog/screens/favorite_screen.dart';
import 'package:intern_blog/screens/home_screen.dart';
import 'package:intern_blog/screens/search_screen.dart';
import 'package:intern_blog/utilities/universal_variables.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Container(child: MyHomePage()),
          Container(child: FavoriteScreen()),
          Container(child: SearchScreen()),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0),
          child: CupertinoTabBar(
            backgroundColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Feather.home,
                  color: (_page == 0)
                      ? UniversalVariables.blackColor
                      : UniversalVariables.greyColor,
                  size: 22,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Feather.heart,
                  color: (_page == 1)
                      ? UniversalVariables.blackColor
                      : UniversalVariables.greyColor,
                  size: 22,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Feather.search,
                  color: (_page == 2)
                      ? UniversalVariables.blackColor
                      : UniversalVariables.greyColor,
                  size: 22,
                ),
              ),
            ],
            onTap: navigationTapped,
            currentIndex: _page,
          ),
        ),
      ),
    );
  }
}
