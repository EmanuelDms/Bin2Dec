import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:bordered_text/bordered_text.dart';

Color colorBlack = const Color.fromRGBO(27, 27, 27, 1);
Color colorRaisedButton = const Color.fromRGBO(62, 60, 161, 1);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Controllers for handling binary number
  TextEditingController numberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _resetFields() {
    setState(() {});
  }

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
            onPressed: _resetFields,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Stack(
            children: <Widget>[
              Image.asset(
                "assets/images/wallpaper.jpg",
                fit: BoxFit.cover,
                width: 500.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    BorderedText(
                      strokeWidth: 6.9,
                      strokeColor: Colors.black,
                      child: Text(
                        "Número Binário (Até 8 dígitos)",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.righteous(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Theme(
                      data: new ThemeData(
                        primaryColor: const Color.fromRGBO(196, 196, 196, 1),
                      ),
                      child: Container(
                        height: 44,
                        width: 304,
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          autofocus: true,
                          decoration: new InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            fillColor: const Color.fromRGBO(196, 196, 196, 1),
                            filled: true,
                            hintText: 'Enter a number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                          style: GoogleFonts.righteous(),
                          // Handling data
                          controller: numberController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Enter a number";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: 123,
                      height: 41,
                      margin: EdgeInsets.fromLTRB(0, 13, 0, 0),
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
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 22, 0, 22),
                      child: Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                        size: 64,
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 304,
                        height: 72,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "1010101",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 64,
                                color: Colors.red,
                                fontFamily: 'DigitalDisplay',
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: colorBlack,
                          border: Border.all(
                            color: const Color.fromRGBO(36, 130, 66, 1),
                            width: 8,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
