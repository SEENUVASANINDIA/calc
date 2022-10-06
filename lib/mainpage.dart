// ignore_for_file: unused_import, camel_case_types

import 'package:calc/age/agecalc.dart';
import 'package:calc/basic/calc.dart';


import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const mainscreen(),
    );
  }
}

class mainscreen extends StatefulWidget {
  const mainscreen({Key? key}) : super(key: key);

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.pink,
            appBar: AppBar(
              title: const Text('Calculator'),
              backgroundColor: Colors.purple,
            ),
            body: const Center(
              child: Text('Welcome'),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    //child: Text('Drawer Header'),
                    child: Column(
                      children: const [
                        Icon(Icons.access_alarm),
                        Image(
                            image: AssetImage(
                                '/home/seenuvasan/AndroidStudioProjects/calculator/image/dgw76o.jpg'))
                      ],
                    ),
                  ),
                  ListTile(
                    title: const Text('Basics'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: const Text('Age'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const agecalc()));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // ListTile(
                  //   title: const Text('Relation'),
                  //   onTap: () {},
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )));
  }
}
