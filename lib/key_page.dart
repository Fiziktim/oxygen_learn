import 'package:flutter/material.dart';

class KeyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              TextField(
                  decoration:
                      InputDecoration(labelText: 'Enter exclusive secret key')),
              RaisedButton(
                child: Text(
                  "Access Oxygen Alpha",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: null,
              ),
            ],
          ),
          padding: EdgeInsets.all(40.0),
        ),
      ),
    );
  }
}
