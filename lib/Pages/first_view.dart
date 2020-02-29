import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:top/Pages/custom_dialog.dart';

class FirstView extends StatelessWidget {
  final primaryColor = const Color(0xFF75A2EA);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
      width: _width,
      height: _height,
      color: primaryColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: _height * 0.10,
              ),
              Text(
                "Hi there,",
                style: TextStyle(fontSize: 44, color: Colors.white),
              ),
              SizedBox(
                height: _height * 0.10,
              ),
              AutoSizeText(
                "Welcome to your new food advisor....",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36, color: Colors.white),
              ),
              SizedBox(
                height: _height * 0.15,
              ),
              RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 30.0, right: 30.0),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => CustomDialog(
                            title: "Would you like to create a free account?",
                            description: " guhvifjodwsamxz ",
                            primaryButtonText: "Create My Account",
                            primaryButtonRoute: "/signUp",
                            secondaryButtonText: "Maybe Later",
                            secondaryButtonRoute: "/home",
                          ));
                },
              ),
              SizedBox(
                height: _height * 0.05,
              ),
              FlatButton(
                child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    ));
  }
}
