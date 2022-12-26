import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class screen6 extends StatefulWidget {
  const screen6({super.key});

  @override
  State<screen6> createState() => _screen6State();
}

class _screen6State extends State<screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Card(
          color: Colors.white54,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Text(
                  "Are you safe?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            style: OutlinedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(50),
                                backgroundColor:
                                    Color.fromARGB(255, 65, 189, 69)),
                            onPressed: (() {}),
                            child: Text(
                              "YES",
                              style: TextStyle(fontSize: 30),
                            ))),
                  ],
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            style: OutlinedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(50),
                                backgroundColor:
                                    Color.fromARGB(255, 148, 32, 24)),
                            onPressed: (() {}),
                            child: Text(
                              "NO",
                              style: TextStyle(fontSize: 30),
                            ))),
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
