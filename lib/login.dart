import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        children: <Widget>[
          SizedBox(height: 80.0),
          Column(
            children: <Widget>[
              Image.asset('assets/diamond.png'),
              SizedBox(height: 16.0),
              Text('SHRINE')
            ],
          ),
          SizedBox(height: 120.0),
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(filled: true, labelText: 'username'),
          ),
          SizedBox(
            height: 12.0,
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(filled: true, labelText: 'password'),
            obscureText: true,
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text('CANCEL'),
                onPressed: () {
                  _usernameController.clear();
                  _passwordController.clear();
                },
              ),
              RaisedButton(
                child: Text('NEXT'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          )
        ],
      ),
    ));
  }
}