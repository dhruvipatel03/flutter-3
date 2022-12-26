import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/screen5.dart';
import 'package:flutter_application_3/screen6.dart';

class screen4 extends StatefulWidget {
  const screen4({super.key});

  @override
  State<screen4> createState() => _screen4State();
}

class _screen4State extends State<screen4> {
  TextEditingController location = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          backgroundColor: Color.fromARGB(255, 154, 29, 20),
          title: Center(
            child: Image(
              image: AssetImage("goriscowhite.png"),
              height: 150,
              width: 150,
            ),
          ),
          actions: [
            Icon(Icons.notifications_outlined),
            SizedBox(width: 20),
            Icon(Icons.more_vert)
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  SizedBox(height: 50),
                  Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(100, 50),
                              backgroundColor:
                                  Color.fromARGB(255, 154, 29, 20)),
                          onPressed: (() {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => screen5()));
                          }),
                          child: Text(
                            "SEND LOCATION",
                            style: TextStyle(fontSize: 20),
                          ))),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text("OR",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(50)),
                          onPressed: (() {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => screen6()));
                          }),
                          child: Text(
                            "TRIGGER PANIC",
                            style: TextStyle(fontSize: 10),
                          ))),
                ],
              ),
            ],
          ),
        ));
  }
}
