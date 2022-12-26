import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/screen3.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
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
              image: AssetImage("verify.png"),
              height: 100,
              width: 100,
            ),
            SizedBox(height: 50),
            Text(
              "please wait , while we verify your mobile number",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 30),
            TextField(
              controller: phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter OTP number")),
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
                              MaterialPageRoute(builder: (_) => screen3()));
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
