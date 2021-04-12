import 'package:flutter/material.dart';
import 'package:flutter_yol_xarakati/constants/appbar.dart';

class Card_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: Text(
          "Yo'l harakati qoidalari",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
