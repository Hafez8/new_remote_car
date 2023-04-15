import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remote Car',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'New Car Remote'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(color: Colors.black),
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
              child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [createButton("Forward")],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: 
                        [
                          createButton("Left"),
                          createButton("Stop"),
                          createButton("Right")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [createButton("Reverse")],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
              onPressed: () {},
              child: Text("Stop"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Padding createButton(String button) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
          height: 80,
          width: 100,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(button),
          )),
    );
  }
}