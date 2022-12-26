import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/screen2.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage("redlogo.png")),
            Image(
              image: AssetImage("mobile.png"),
              height: 100,
              width: 100,
            ),
            SizedBox(height: 50),
            Text(
              "please wait , enter your mobile number",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 30),
            TextField(
              controller: phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter phone number")),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 50),
                            backgroundColor: Color.fromARGB(255, 154, 29, 20)),
                        onPressed: (() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => screen2()));
                        }),
                        child: Text(
                          "SUBMIT",
                          style: TextStyle(fontSize: 20),
                        ))),
              ],
            ),
            SizedBox(height: 30),
            Image(
              image: AssetImage("gorisco.png"),
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
