import 'package:flutter/material.dart';

class MyTextFieldWidget extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  final Function(String)? onChanged;
  const MyTextFieldWidget({
    super.key, 
    required this.hintText, 
    required this.isPassword, 
    required this.controller, this.onChanged,
  });

  @override
  State<MyTextFieldWidget> createState() => _MyTextFieldWidgetState();
}

class _MyTextFieldWidgetState extends State<MyTextFieldWidget> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ? isVisible : false,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                icon: Icon(
                  isVisible
                      ? Icons.visibility_off_sharp 
                      : Icons.visibility_sharp
                ),
              )
            : null,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),),
      hintText: widget.hintText,
    ));
  }
}