import 'package:flutter/material.dart';
import 'package:flutter_yol_xarakati/constants/appbar.dart';
import 'package:flutter_yol_xarakati/constants/constant.dart';
import 'package:flutter_yol_xarakati/home.dart';
import 'package:flutter_yol_xarakati/drawer/profile.dart';
import 'package:flutter_yol_xarakati/drawer/settings.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  List<Widget> list = [
    Home(),
    Profile(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primaryColor: Color,
        // accentColor: accentColor,
        fontFamily: 'Heebo-Regular',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appbar,
        body: list[index],
        drawer: MyDrawer(
          onTap: (ctx, i) {
            setState(() {
              index = i;
              Navigator.pop(ctx);
            });
          },
        ),
      ),
    );
  }
}

// class CardItemsSearch extends SearchDelegate<>{

// }

class MyDrawer extends StatelessWidget {
  final Function onTap;

  MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: 275,
        child: Drawer(
          // elevation: 0,
          child: Container(
            color: primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DrawerHeader(
                  child: Container(
                    alignment: Alignment(-1, 1),
                    child: Text(
                      'YHQ',
                      style: TextStyle(
                        fontSize: 30,
                        color: accentColor2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/image_draw.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    size: 25,
                    color: whiteColor,
                  ),
                  title: Text(
                    "Asosiy",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: accentColor),
                  ),
                  onTap: () => onTap(context, 0),
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 25,
                    color: whiteColor,
                  ),
                  title: Text(
                    "Profil",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: accentColor,
                    ),
                  ),
                  onTap: () => onTap(context, 1),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 25,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Sozlamalar",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: accentColor),
                  ),
                  onTap: () => onTap(context, 2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
