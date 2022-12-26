import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/demo.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  TextEditingController name = TextEditingController();
  TextEditingController pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 243, 128),
        title: Center(child: Text("SIGN IN")),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 194, 198, 206),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Name"),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: pwd,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "password"),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => demo()));
                  }),
                  child: Text("login"),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
