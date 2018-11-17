import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Code-in app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  Widget _buildArrow(Alignment align, IconData icon, String message) {
    return Align(
      alignment: align,
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {
          scaffoldKey.currentState.showSnackBar(
            SnackBar(
              content: Text(message),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Google Code-in'),
      ),
      body: Center(
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(25.0),
          color: Color(0xFF666666),
          child: Container(
            height: 150.0,
            width: 150.0,
            child: IconTheme(
              data: IconThemeData(color: Colors.white),
              child: Stack(
                // List of buttons
                children: <Widget>[
                  _buildArrow(Alignment.centerRight, Icons.arrow_forward,
                      "Going forward"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
