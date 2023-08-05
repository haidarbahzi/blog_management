import 'package:blog_management/page/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_text_styled/flutter_text_styled.dart';
import 'package:page_transition/page_transition.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _emailFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/ic_register.png',
                      width: 205,
                      height: 205,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(78, 106, 255, 1),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(12.5),
                    child: TextField(
                      focusNode: _emailFocusNode,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Example: example@gmail.com",
                        labelText: "Email",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(12.5),
                    child: TextField(
                      focusNode: _passwordFocusNode,
                      obscureText: true,
                      autocorrect: false,
                      autofillHints: null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Example: 1234567890",
                        labelText: "Password",
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(78, 106, 255, 1),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade, child: Login()));
                      },
                      child: TextStyled(
                        textStyle: const TextStyle(color: Colors.grey),
                      ).getRichText("Have an account? [color=black"
                          "]Login here[/color]"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
