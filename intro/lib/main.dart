import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INTRODUCE',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
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
        centerTitle: true,
        elevation: 0.0,

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){
              print('Shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('Search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/sehee.jpeg'),
                backgroundColor: Colors.white,
              ),
//              otherAccountsPictures: <Widget>[
//                CircleAvatar(
//                  backgroundImage: AssetImage('assets/daco.png'),
//                  backgroundColor: Colors.white,
//                ),
//                CircleAvatar(
//                  backgroundImage: AssetImage('assets/daco.png'),
//                  backgroundColor: Colors.white,
//                ),
             // ],
              accountName: Text('jsh-me'),
              accountEmail: Text('ppm_it@naver.com'),
              onDetailsPressed: (){
                print('clicked');
              },
              decoration: BoxDecoration(
                color: Colors.amber[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[800],
              ),
              title: Text('Home'),
              trailing: Icon(Icons.navigate_next),
              onTap: (){
                print('Home is clicked');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[800],
              ),
              title: Text('Setting'),
              trailing: Icon(Icons.navigate_next),
              onTap: (){
                print('Setting is clicked');
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[800],
              ),
              title: Text('QnA'),
              trailing: Icon(Icons.navigate_next),
              onTap: (){
                print('QnA is clicked');
              },
            ),
          ],
        ),
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
              child: FlatButton(
                onPressed: (){
                  showToast();
                },
                child: Text('Toast msg'),
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Show me'),
      onPressed: () {
        showSnackBar('show me', context);
      },
    );
  }
}

void showToast(){
  Fluttertoast.showToast(msg: 'flutter toast msg',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.red,
    fontSize: 20.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
  );
}

void showSnackBar(String msg, BuildContext context){
  Scaffold.of(context).showSnackBar(
      SnackBar(content: Text(msg,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
      ),
      ),
        backgroundColor: Colors.teal,
        duration: Duration(milliseconds:5000),
      ),
  );
}