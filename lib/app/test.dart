import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Whatever"),
        ),
        body: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 10,
                blurRadius: 5,
                offset: Offset(0, 7), // changes position of shadow
              ),
            ],
          ),
          child: Image.asset("assets/removed.png"),
        ));
  }
}
