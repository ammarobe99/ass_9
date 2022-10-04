import 'package:flutter/material.dart';

void main() {
  runApp(DeemoApp());
}

class DeemoApp extends StatefulWidget {
  const DeemoApp({super.key});

  @override
  State<DeemoApp> createState() => _DeemoAppState();
}

class _DeemoAppState extends State<DeemoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Personal Information")),
        drawer: Drawer(
          child: ListView(children: [
            ListTile(
              leading: Icon(Icons.perm_device_information),
              title: Text(
                "Personal Information",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Divider(
              height: 70,
            ),
            ListTile(
              title: Text(
                "name: Ammar",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Divider(height: 20),
            ListTile(
              title: Text(
                "Age: 23",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Divider(
              height: 20,
            ),
            ListTile(
              title: Text(
                "nember: 377777",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ]),
        ),
        body: ListView.separated(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Padding(
                child: Text("person ${index + 1}"),
                padding: EdgeInsets.all(50),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.amber,
            );
          },
        ),
      ),
    );
  }
}
