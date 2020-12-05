import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
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
            'Favorite',
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ),
      body: Center(
        child: Text('Favorite Screen'),
      ),
    );
  }
}
