import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class screen5 extends StatefulWidget {
  const screen5({super.key});

  @override
  State<screen5> createState() => _screen5State();
}

class _screen5State extends State<screen5> {
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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              "send your location for help to",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Image(
              image: AssetImage("location.png"),
              height: 150,
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(height: 50),
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 50),
                            backgroundColor: Color.fromARGB(255, 154, 29, 20)),
                        onPressed: (() {}),
                        child: Text(
                          "ADMIN",
                          style: TextStyle(fontSize: 20),
                        ))),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text("OR",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(height: 50),
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 50),
                            backgroundColor: Color.fromARGB(255, 154, 29, 20)),
                        onPressed: (() {}),
                        child: Text(
                          "GROUP",
                          style: TextStyle(fontSize: 20),
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
