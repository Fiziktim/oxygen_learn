import 'package:flutter/material.dart';

class EmailVerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text(
                  "Last step : We have sent you a security code by email, enter it, and you're in 👌"),
              TextField(
                  decoration:
                      InputDecoration(labelText: 'Email security code : ')),
              ElevatedButton(
                child: Text(
                  "Get in.",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () => print('Get in button pressed'),
              ),
            ],
          ),
          padding: EdgeInsets.all(40.0),
        ),
      ),
    );
  }
}
