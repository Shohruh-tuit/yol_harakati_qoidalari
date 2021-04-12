import 'package:flutter/material.dart';
import 'package:flutter_yol_xarakati/constants/constant.dart';

AppBar appbar = AppBar(
  backgroundColor: primaryColor,
  title: Text("Yo'l harkati qoidalari"),
  actions: [
    Container(
      child: IconButton(
        padding: EdgeInsets.only(right: 10),
        iconSize: 30,
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
    ),
    Container(
      padding: const EdgeInsets.only(right: 10),
      child: DropdownButton(
        icon: Icon(Icons.language),
        focusColor: whiteColor,
        hint: Text(
          "Ti",
          style: TextStyle(color: whiteColor),
        ),
      ),
    ),
  ],
);
