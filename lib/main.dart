import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _message;
  static var _janken = <String>['グー', 'チョキ', 'パー'];
  final controller = TextEditingController();

  @override
  void initState() {
    _message = 'Ready?';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('App Name'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  _message,
                  style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: controller,
                  style: TextStyle(
                      fontFamily: "Robot",
                      fontSize: 28.0,
                      color: const Color(0xFFFF0000),
                      fontWeight: FontWeight.w400),
                ),
              ),
              FlatButton(
                onPressed: buttonPressed,
                padding: EdgeInsets.all(10.0),
                color: Colors.lightBlueAccent,
                child: Text(
                  "push me!",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto",
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  void buttonPressed() {
    setState(() {
      _message = 'You said: ' + controller.text;
    });
  }
}
