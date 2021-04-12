import 'package:flutter/material.dart';
import 'package:flutter_yol_xarakati/constants/appbar.dart';

class Card_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: Text(
          "Transport vositalaridan foydalanishni taqiqlovchi shartlar",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
