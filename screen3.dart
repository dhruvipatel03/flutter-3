import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/screen4.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  TextEditingController name = TextEditingController();
  TextEditingController pwd = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController designation = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController adderess = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Image(image: AssetImage("redlogo.png")),
              SizedBox(height: 10),
              TextField(
                controller: name,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    label: Text("NAME"),
                    icon: new Icon(Icons.account_circle_outlined)),
              ),
              SizedBox(height: 10),
              TextField(
                controller: pwd,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    label: Text("PASSWORD"),
                    icon: new Icon(Icons.lock_outline)),
              ),
              SizedBox(height: 10),
              TextField(
                controller: phone,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    label: Text("CONTACT NUMBER"),
                    icon: new Icon(Icons.phone_outlined)),
              ),
              SizedBox(height: 10),
              TextField(
                controller: designation,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    label: Text("DESIGNATION"),
                    icon: new Icon(Icons.work_outline)),
              ),
              SizedBox(height: 10),
              TextField(
                controller: email,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    label: Text("EMAIL"),
                    icon: new Icon(Icons.email_outlined)),
              ),
              SizedBox(height: 10),
              TextField(
                controller: adderess,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    label: Text("ADDRESS"),
                    icon: new Icon(
                      Icons.home_outlined,
                    )),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(100, 50),
                              backgroundColor:
                                  Color.fromARGB(255, 154, 29, 20)),
                          onPressed: (() {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => screen4()));
                          }),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(fontSize: 20),
                          ))),
                ],
              ),
              SizedBox(height: 10),
              Image(
                image: AssetImage("gorisco.png"),
                height: 30,
              )
            ])));
  }
}
