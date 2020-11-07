import 'dart:ui';
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

  void _resetFields() {
    print('Refresh Button');
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
                "images/wallpaper.jpg",
                fit: BoxFit.cover,
                width: 500.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 24.0, horizontal: 100.0),
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
                    TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      autofocus: true,
                      decoration: new InputDecoration(
                        labelText: "Número Binário (Até 8 dígitos)",
                        labelStyle: GoogleFonts.righteous(
                          fontSize: 25.0,
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(10.0, 1.0),
                              blurRadius: 1.0,
                              color: Color.fromARGB(255, 40, 40, 40),
                            ),
                          ],
                        ),
                        border: OutlineInputBorder(),
                        fillColor: colorBlack,
                      ),
                      style: GoogleFonts.righteous(
                        color: Colors.white,
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
