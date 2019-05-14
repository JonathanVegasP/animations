import 'package:animations/components/dismiss_keyboard.dart';
import 'package:animations/resources/images.dart';
import 'package:animations/scenes/login/widgets/form_container.dart';
import 'package:animations/scenes/login/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgBackground),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            minimum: EdgeInsets.all(8.0),
            child: ListView(
              padding: EdgeInsets.all(0.0),
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 24, bottom: 32.0),
                          child: Image.asset(
                            imgTickicon,
                            width: 150.0,
                            height: 150.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                        FormContainer(
                          key: _formKey,
                        ),
                        SignUpButton(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
