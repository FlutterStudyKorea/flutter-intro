import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INTRODUCE',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[700],
      appBar: AppBar(
        title: Text('INTRODUCE'),
        backgroundColor: Colors.amber[600],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          //start alignment
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/sehee.jpeg'),
                radius: 60.0,
              ),
            ),
            //line
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('NAME',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0
            )
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Sehee Jeong',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text('COMMENT',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0
                )
            ),
            SizedBox(
              height: 5.0,
            ),
            Text('have a good time',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text('CHARACTER',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Pig',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Sleepyhead',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Lasizm',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/daco.png'),
                radius: 40.0,
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
