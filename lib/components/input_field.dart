import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final Function validator;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final Function onFieldSubmitted;

  const InputField({
    Key key,
    this.hintText,
    this.obscureText = false,
    this.icon,
    this.validator(String text),
    this.focusNode,
    this.textInputAction = TextInputAction.done,
    this.onFieldSubmitted(String text),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white24,
            width: 0.5,
          ),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 8.0,
          ),
        ),
        obscureText: obscureText,
        validator: validator,
        focusNode: focusNode,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
        textInputAction: textInputAction,
        onFieldSubmitted: onFieldSubmitted,
      ),
    );
  }
}
