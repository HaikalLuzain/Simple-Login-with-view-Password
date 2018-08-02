import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  var _passFilled = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlutterLogo(
                    colors: Colors.red,
                    size: 80.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Welcome to Flutter",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.red),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Sign in to continue",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 30.0),
                      child: TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.person),
                          hintText: "Enter your username",
                          labelText: "Username",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
                      child: TextField(
                        onChanged: (v) => setState(() {
                              if (v.length < 1) {
                                _passFilled = 0;
                                _obscureText = true;
                              } else {
                                _passFilled = 1;
                              }
                            }),
                        maxLines: 1,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                            suffixIcon: new GestureDetector(
                              onTap: () => setState(() {
                                    _obscureText = !_obscureText;
                                  }),
                              child: new Icon(_passFilled == 0
                                  ? Icons.lock
                                  : _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                            ),
                            hintText: "Enter your password",
                            labelText: "Password",
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
                      width: double.infinity,
                      child: RaisedButton(
                        padding: EdgeInsets.all(12.0),
                        shape: StadiumBorder(),
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.red,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "SIGN UP FOR AN ACCOUNT",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
