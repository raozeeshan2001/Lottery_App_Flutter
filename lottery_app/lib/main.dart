import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('your lottery number is $x')),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: x == 3
                        ? const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.done,
                                color: Colors.green,
                              ),
                              Text(
                                'condition matched',
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.error,
                                color: Colors.red,
                              ),
                              Text(
                                'better luck next time,your lottery number is $x. try again',
                              ),
                            ],
                          ),
                  ),
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('hello');
            x = random.nextInt(5);
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
