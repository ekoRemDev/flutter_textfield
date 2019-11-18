import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String ptext = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField widget',
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: new Text('Textfield App'),
        ),
        body: new Column(
          children: <Widget>[
            new TextField(
              onChanged: (String txt){
                setState(() {
                  ptext = txt;
                });
              },
              decoration: new InputDecoration(hintText: 'Type Something', labelText: 'Enter Text'),
            ),
            new Text(ptext)
          ],
        ),
      ),
    );
  }
}
