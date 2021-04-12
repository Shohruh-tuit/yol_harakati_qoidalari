import 'package:flutter/material.dart';
import 'package:flutter_yol_xarakati/cards/card_1.dart';
import 'package:flutter_yol_xarakati/cards/card_2.dart';
import 'package:flutter_yol_xarakati/cards/card_3.dart';
import 'package:flutter_yol_xarakati/cards/card_4.dart';
import 'package:flutter_yol_xarakati/cards/card_5.dart';
import 'package:flutter_yol_xarakati/constants/constant.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatelessWidget {
  int s = 1;

  Home({this.s});

  get a => null;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Avto Video bloglar',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          SizedBox(
            height: 200.0,
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) => Container(
                padding: EdgeInsets.all(5),
                width: 300,
                child: Card(
                  child: Center(child: Text('Video blog')),
                ),
              ),
            ),
          ),

          /* *************************************************************************************************** */

          // Cards

          Divider(
            thickness: 4,
            color: primaryColor,
          ),
          Text(
            'Qoidalar',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),

          /* ****************************************************************************************** */

          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            height: 200,
            child: Card(
              color: Colors.black,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 10,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Card_1()));
                },
                child: Stack(
                  children: [
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: new ExactAssetImage(
                              'images/image.jpg',
                            ),
                          ),
                        ),
                        width: double.infinity,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Yo'l harakati qoidalari",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            height: 200,
            child: Card(
              color: Colors.black,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 10,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Card_2()));
                },
                child: Stack(
                  children: [
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: new ExactAssetImage(
                              'images/image2.jpg',
                            ),
                          ),
                        ),
                        width: double.infinity,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Yo'l belgilari",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            height: 200,
            child: Card(
              color: Colors.black,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 10,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Card_3()));
                },
                child: Stack(
                  children: [
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: new ExactAssetImage(
                              'images/image3.jpg',
                            ),
                          ),
                        ),
                        width: double.infinity,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Yotiq va tik chiziqlar",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            height: 200,
            child: Card(
              color: Colors.black,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 10,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Card_4()));
                },
                child: Stack(
                  children: [
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: new ExactAssetImage(
                              'images/image4.jpg',
                            ),
                          ),
                        ),
                        width: double.infinity,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Container(
                        width: 300,
                        child: Text(
                          "Transport vositalaridan foydalanishni taqiqlovchi shartlar",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            height: 200,
            child: Card(
              color: Colors.black,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 10,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Card_5()));
                },
                child: Stack(
                  children: [
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: new ExactAssetImage(
                              'images/image5.png',
                            ),
                          ),
                        ),
                        width: double.infinity,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Xavflilik belgilari",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
