import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(left: 35.0,right: 35.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.white
      ),
      child: TextField(
        textAlign: TextAlign.center,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          icon: Icon(Icons.search,size: 25.0,color: Colors.black),
          hintText: 'Entrer un aliment',
          hintMaxLines: 1,
          hintStyle: TextStyle(color: Colors.black),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white,width: 3.0),
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );
  }
}
