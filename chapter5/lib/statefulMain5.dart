import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Person {
  String name;

  Person(name);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    print('firstPage initstate()');
  }

  @override
  void dispose() {
    super.dispose();
    print('firstPage dispose()');
  }

  @override
  Widget build(BuildContext context) {
    print('first page build()');
    return Scaffold(
        appBar: AppBar(
          title: Text('first'),
        ),
        body: RaisedButton(
          child: Text('next page'),
          onPressed: () {
            final person = Person('sehee');
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondPage(person: person)),
            );
          },
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  final Person person;

  SecondPage({Key key, @required this.person}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {


  @override
  Widget build(BuildContext context) {
    print('second page build()');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.person.name),
      ),
      body: IconButton(
        icon: Icon(
          Icons.insert_emoticon,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print('secondPage initstate()');
  }

  @override
  void dispose() {
    super.dispose();
    print('secondPage dispose()');
  }
}
