import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BlogTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 35, bottom: 10, left: 24, right: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * .09,
            width: MediaQuery.of(context).size.width * .156,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(16)),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 35, bottom: 0, left: 23, right: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * .035,
                width: MediaQuery.of(context).size.width * .18,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 0, left: 26, right: 0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'How to run a More Effective',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ))),
            Padding(
                padding: const EdgeInsets.only(
                    top: 2, bottom: 0, left: 26, right: 0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Meeting',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
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
          ],
        )
      ],
    );
  }
}
