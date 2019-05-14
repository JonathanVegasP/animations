import 'package:animations/components/input_field.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  final GlobalKey<FormState> key;
  final _focus = FocusNode();

  FormContainer({
    @required this.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: InputField(
              hintText: 'E-mail',
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (s) =>
                  FocusScope.of(context).requestFocus(_focus),
              icon: Icons.person_outline,
              validator: (s) {
                if (s.isEmpty)
                  return 'Enter an email';
                else if (!RegExp(
                  r'^[\w]+(\.[\w]+)*@[\w-]+(\.[a-z]{2,3})*(\.[a-z]{2,3})$',
                  caseSensitive: false,
                ).hasMatch(s)) return 'Enter a valid email';
              },
            ),
          ),
          InputField(
            hintText: 'Senha',
            focusNode: _focus,
            icon: Icons.lock_outline,
            obscureText: true,
            validator: (s) {
              if (s.isEmpty)
                return 'Enter a password';
              else if (s.length < 6)
                return 'Your password must have at least 6 digits';
            },
          )
        ],
      ),
    );
  }
}
