import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(),
        title: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(right: 50),
          child: Text(
            'Search',
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ),
      body: Center(
        child: Text('Search Screen'),
      ),
    );
  }
}
