import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

Color colorAppBar = const Color.fromRGBO(27, 27, 27, 1);
Color colorRaisedButton = const Color.fromRGBO(62, 60, 161, 1);
void main() {
  runApp(MaterialApp(
    title: "Binary to Decimal",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Bin2Dec",
            style: GoogleFonts.righteous(fontSize: 48.0),
          ),
          backgroundColor: colorAppBar,
          centerTitle: true,
          toolbarHeight: 77.0,
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  "images/wallpaper.jpg",
                  fit: BoxFit.cover,
                  width: 500.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.only(top: 24.0, left: 80.0, right: 80.0),
                      color: colorAppBar,
                      child: Text(
                        "10",
                        style: TextStyle(fontSize: 50.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 24.0, horizontal: 120.0),
                      child: RaisedButton(
                        onPressed: () {},
                        color: colorRaisedButton,
                        child: Text(
                          "Converter",
                          style: GoogleFonts.righteous(
                              fontSize: 18.0, color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
