import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('cupertino design'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoSwitch(
              value: _isOn,
              onChanged: (bool value) {
                setState(() {
                  _isOn = value;
                });
              },
            ),
            CupertinoButton(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange,
              onPressed: () {
              },
              child: Text('cupertino button'),
            ),
            CupertinoButton(
              child: Text('cupertino picker'),
              onPressed: (){
                _showCupertinoDialog();
              },
            )
          ],
        ),
      ),
    );
  }

  _showCupertinoDialog(){
    showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text('title'),
        content: Text('content'),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text('cancel'),
          ),
          CupertinoDialogAction(
            child: Text('ok'),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
  _showCupertinoPicker(){

  }
}
