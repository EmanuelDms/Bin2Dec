import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

Color colorBlack = const Color.fromRGBO(27, 27, 27, 1);
Color colorRaisedButton = const Color.fromRGBO(62, 60, 161, 1);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _resetFields() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Bin2Dec",
            style: GoogleFonts.righteous(fontSize: 48.0),
          ),
          backgroundColor: colorBlack,
          centerTitle: true,
          toolbarHeight: 77.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () => {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                    TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: "Binary Number",
                        labelStyle: GoogleFonts.righteous(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(),
                        fillColor: colorBlack,
                      ),
                      style: GoogleFonts.righteous(
                        color: Colors.white,
                      ),
                      /*  width: 300.0,
                        color: colorBlack,
                        margin:
                          EdgeInsets.only(top: 24.0, left: 80.0, right: 80.0),
                        border: Border.all(
                        ),
                      ), */
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
