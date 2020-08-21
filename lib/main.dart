import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter For Fun',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.balooTammaTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {

        final fontSize = math.max(constraints.maxWidth / 30, 24);

        return Scaffold(
          body: Stack(
            children: [
              Container(
                color: Colors.white,
                child: FlareActor(
                  "assets/rive/work.flr",
                  alignment: Alignment.topCenter,
                  fit: BoxFit.contain,
                  animation: "coding",
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Flutter For Fun',
                    style: TextStyle(
                        fontSize: fontSize,
                      color: Colors.blueAccent
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
