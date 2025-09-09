import 'package:flutter/material.dart';
import 'package:login_app/home_screen.dart';
import 'package:login_app/my_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String email = '';
  String password = '';
 
  @override
   void initState() {
    super.initState();
    emailController.addListener(() => emailtext(emailController.text));
    passwordController.addListener(() => passwordtext(passwordController.text));
  }
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
void emailtext(String text) {
  setState(() {
    email = text;
  });
}

void passwordtext(String text) {
  setState(() {
    password = text;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 400, maxWidth: 450),
          child: Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.grey.withValues(alpha: .4),
              borderRadius: BorderRadius.circular(12)
          ),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              SizedBox (
                width: double.infinity,
                child: Text(
                  'WELCOME',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Roboto',
              ),
              ),
              ),
              SizedBox(height: 20),
              MyTextFieldWidget(
                controller: emailController,
                hintText: 'Email', 
                isPassword: false, 
                onChanged: (p0) {
                  setState(() {
                    email = p0;
                  });
                }
              ),
              SizedBox(height: 20),
              MyTextFieldWidget(
                controller: passwordController,
                hintText: 'Password', 
                isPassword: true, onChanged: (p0) {
                  setState(() {
                    password = p0;
                  });
                }
              ),
              SizedBox(height: 30),
              FilledButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                },
                ),
                );
              },
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 55),
                backgroundColor: 
                email.isNotEmpty &&
                password.isNotEmpty
                ? const Color.fromARGB(255, 50, 4, 255) 
                : const Color.fromARGB(255, 154, 154, 154)              
              ), 
              child: Text('Login')
              ),
            ]),
        ) ,
        )
    )
    );
  }
}