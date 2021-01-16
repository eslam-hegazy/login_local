import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "my app",
      debugShowCheckedModeBanner: false,
      home: myhome(),
    );
  }
}
class myhome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text("Eslam App"),
        elevation: 0,
        backgroundColor: Colors.deepPurple.withOpacity(0.5),
        centerTitle: true,
      ),
      body: login(),
    );
  }
}