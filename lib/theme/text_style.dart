import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dimens.dart';


// ignore: must_be_immutable
class Headline3txt extends StatelessWidget {
  String text;
  Color color;

  Headline3txt(this.text, {this.color: Colors.black});

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          textStyle: TextStyle(
              fontSize: fullWidth(context) / 8,
              fontWeight: FontWeight.bold,
              color: color)),
    );
  }
} //Headline 3

// ignore: must_be_immutable
/*class Headline4txt extends StatelessWidget {
  String text;
  Color color;

  Headline4txt(this.text, {this.color: Colors.black});

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          textStyle: TextStyle(
              fontSize: fullWidth(context) / 8,
              fontWeight: FontWeight.w400,
              color: color)),
    );
  }
}*/

// ignore: must_be_immutable
class Headline5txt extends StatelessWidget {
  String text;
  Color color;

  Headline5txt(this.text, {this.color: Colors.black});

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          textStyle: TextStyle(
              fontSize: fullWidth(context) / 13.95,
              fontWeight: FontWeight.w500,
              color: color)),
    );
  }
} //Headline 5

// ignore: must_be_immutable
class Headline6txt extends StatelessWidget {
  String text;
  Color color;

  Headline6txt(this.text, {this.color: Colors.black});

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          textStyle: TextStyle(
              fontSize: fullWidth(context) / 16.9,
              fontWeight: FontWeight.bold,
              color: color)),
    );
  }
} //Headline 6

// ignore: must_be_immutable
class Subtitle1txt extends StatelessWidget {
  String text;
  Color color;

  Subtitle1txt(this.text, {this.color: Colors.black});

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          textStyle: TextStyle(
              fontSize: fullWidth(context) / 19.2,
              fontWeight: FontWeight.w900,
              color: color)),
    );
  }
} //Subtitle 1

// ignore: must_be_immutable
class Subtitle2txt extends StatelessWidget {
  String text;
  Color color;

  Subtitle2txt(this.text, {this.color: Colors.black});

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          textStyle: TextStyle(
              fontSize: fullWidth(context) / 19.2,
              fontWeight: FontWeight.w400,
              color: color)),
    );
  }
} //Subtitle 2

// ignore: must_be_immutable
class Body1txt extends StatelessWidget {
  String text;
  Color color;

  Body1txt(this.text, {this.color: Colors.black});

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          textStyle: TextStyle(
              fontSize: fullWidth(context) / 22.1,
              fontWeight: FontWeight.w500,
              color: color)),
    );
  }
} //Body 1

// ignore: must_be_immutable
class Body2txt extends StatelessWidget {
  String text;
  Color color;

  Body2txt(this.text, {this.color: Colors.black});

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          textStyle: TextStyle(
              fontSize: fullWidth(context) / 26.3,
              fontWeight: FontWeight.normal,
              color: color)),
    );
  }
} //Body 2

// ignore: must_be_immutable
/*class Buttontxt extends StatelessWidget {
  String text;
  Color color;

  Buttontxt(this.text, {this.color: Colors.black});

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          textStyle: TextStyle(
              fontSize: fullWidth(context) / 30.1,
              fontWeight: FontWeight.w500,
              color: color)),
    );
  }
}*/

// ignore: must_be_immutable
class Captiontxt extends StatelessWidget {
  String text;
  Color color;

  Captiontxt(this.text, {this.color: Colors.black});

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          textStyle: TextStyle(
              fontSize: fullWidth(context) / 32,
              fontWeight: FontWeight.w400,
              color: color)),
    );
  }
} //Caption