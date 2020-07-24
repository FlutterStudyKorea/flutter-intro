import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Person{
  String name;

  Person(this.name);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('FirstPage build()');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
         visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstPage(),
      //Routes를 통해 페이지 네비게이션이 가능함.
      routes: {
        '/first' : (context) => FirstPage(),
        '/second' : (context) => SecondPage(),
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Second Page build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('first Page',
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
            child: Text('next page',
            style: TextStyle(
              color: Colors.white,
            ),
            ),
            color: Colors.blueGrey,
            onPressed: () async {
              final person = Person('sehee');
//              final result = await Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => SecondPage(myName: person))
//              );
              final result = await Navigator.pushNamed(context, '/second');
              print(result);
            },
          ),
        )
    );
  }
}

class SecondPage extends StatelessWidget {
  final Person myName;

  //property
  SecondPage({@required this.myName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Center(
             child: FlatButton(
              child: Text('return to previous page'),
              onPressed: () { Navigator.pop(context, 'ok'); },
            ),
          ),
//          Center(
//            child: Text(myName.name,
//            style: TextStyle(
//              color: Colors.transparent,
//              fontStyle: FontStyle.normal,
//            ),
//            ),
//          )
        ],
      ),
    );
  }
}

