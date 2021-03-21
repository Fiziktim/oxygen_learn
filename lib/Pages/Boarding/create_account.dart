import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              TextField(decoration: InputDecoration(labelText: 'email adress')),
              TextField(decoration: InputDecoration(labelText: 'username')),
              TextField(
                  decoration: InputDecoration(labelText: 'password'),
                  obscureText: true),
              TextField(
                  decoration: InputDecoration(labelText: 'repeat password'),
                  obscureText: true),
              ElevatedButton(
                child: Text(
                  "Access Oxygen Alpha",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () => print('Access Oxygen Alpha button pressed'),
              ),
              Text('Have an account yet ? : '),
              ElevatedButton(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () => print('Login button pressed'),
              ),
            ],
          ),
          padding: EdgeInsets.all(40.0),
        ),
      ),
    );
  }
}
