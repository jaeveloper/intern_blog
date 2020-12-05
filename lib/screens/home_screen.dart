import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intern_blog/components/blog_tile.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
            padding: EdgeInsets.only(top: 15, bottom: 5, left: 20, right: 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(26),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Image.asset(
                  'assets/images/girl.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            )),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 5, left: 0, right: 25),
            child: Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 0, left: 23, right: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: MediaQuery.of(context).size.height * .28,
                width: MediaQuery.of(context).size.width * .89,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Image.asset(
                  'assets/images/4576.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.only(top: 15, bottom: 0, left: 26, right: 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .7,
                    child: Text(
                      'How to run a More Effective Meeting',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        height: 1.3,
                      ),
                    ),
                  ))),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 3, bottom: 0, left: 26, right: 0),
                child: Icon(
                  FontAwesomeIcons.clock,
                  size: 13,
                  color: Colors.black38,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 6, bottom: 0, left: 10, right: 7),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '50m ago',
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ))),
              Padding(
                padding: const EdgeInsets.only(
                    top: 3, bottom: 0, left: 26, right: 0),
                child: Icon(
                  FontAwesomeIcons.commentDots,
                  size: 18,
                  color: Colors.black38,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 6, bottom: 0, left: 7, right: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '68 comments',
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 0, left: 26, right: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Popular',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ))),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 0, left: 26, right: 29),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Show all',
                        style: TextStyle(
                          color: Colors.red[300],
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ))),
            ],
          ),
          BlogTile(),
          BlogTile(),
        ],
      ),
    );
  }
}
