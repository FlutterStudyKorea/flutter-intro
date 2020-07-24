// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('FirstPage build()');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('5.1 practice'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: '여기에 입력하세요.', //hint
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(), //outline
                  labelText: '여기에 입력하세요!',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Test Text !!',
              style: TextStyle(
                fontSize: 20,
              ),
              ),
              GestureDetector(
                onTap: (){
                  print('gesture detector click');
                },
                child: Text('Click me!'),
              ),
              InkWell(
                onTap: (){
                  print('Inkwell');
                },
                child: Text('click me, Inkwell----!'),
              ),
              MySubHomePage()
            ],
          ),
        ),
      )
    );
  }
}

class MySubHomePage extends StatefulWidget {
  @override
  _MySubHomePageState createState() => _MySubHomePageState();
}

class _MySubHomePageState extends State<MySubHomePage> {
  final _valueList = ['first','second','third'];
  var _selectedValue = 'first';
  var _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Switch(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value;
                });
              },
            ),
            DropdownButton(
              value: _selectedValue,
              items: _valueList.map(
                  (value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  },
              ).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            FlatButton(
              onPressed: () {
                showDialog(context);
              },
              child: Text('Ok'),
            ),
          ],
        ),
      ),
    );
  }
}

void showDialog(BuildContext ctx) {
   AlertDialog(
        title: Text('title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('alert dialog'),
              Text('OK를 눌러 닫습니다.'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    }