import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intern_blog/components/blog_tile.dart';
import 'package:intern_blog/utilities/constants.dart';

class BlogPost extends StatefulWidget {
  @override
  _BlogPostState createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 0, left: 23, right: 10),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(4)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 2.5, bottom: 1, left: 4, right: 4),
                    child: Text(
                      'FASHION',
                      style: TextStyle(color: Colors.white, fontSize: 9),
                    ),
                  ),
                ),
              ),
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
                          top: 6, bottom: 0, left: 10, right: 40),
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
                ],
              ),
            ],
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
              padding: const EdgeInsets.only(
                  top: 20, bottom: 0, left: 26, right: 30),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    LOREM_IPSUM,
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        letterSpacing: 0,
                        wordSpacing: 1,
                        height: 1.3),
                  ))),
        ],
      ),
    );
  }
}
