import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Container(
            margin:
                const EdgeInsets.only(left: 23, top: 0, right: 23, bottom: 0),
            padding: const EdgeInsets.only(left: 0, top: 50.0, bottom: 0),
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: const <Widget>[
                    Image(
                      image: AssetImage('assets/img/flutter_logo.png'),
                      height: 200,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0, top: 0, bottom: 50),
                    ),
                    Text(
                      'Flutter',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.red,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      'Flutter test in android \nok dsjfhskdfjhsdf',
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
