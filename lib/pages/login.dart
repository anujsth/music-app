import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changed = false;
  String name = '';
  final _formKey = GlobalKey<FormState>();

  submit() async {
    if (_formKey.currentState!.validate()) {
      setState(
        () {
          changed = true;
        },
      );
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      textStyle: TextStyle(color: Theme.of(context).primaryColor),
      color: Theme.of(context).backgroundColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 20),
              child: Image.asset('assets/flutter.png'),
            ),
            Text('Welcome $name',
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).primaryColor)),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: ((value) {
                        setState(() {
                          name = value;
                        });
                      }),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor)),
                          focusColor: Colors.white,
                          prefixIcon: Icon(
                            CupertinoIcons.person_fill,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintText: 'Enter Username',
                          hintStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 12),
                          labelText: "Username",
                          labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 15)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'cannot be empty';
                        } else {
                          return null;
                        }
                      },
                    ),
                    TextFormField(
                      style: TextStyle(color: Theme.of(context).primaryColor),
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          hintStyle:
                              TextStyle(color: Theme.of(context).primaryColor),
                          prefixIcon: Icon(CupertinoIcons.lock,
                              color: Theme.of(context).primaryColor),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 15),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'password cannot be empty';
                        } else if (value.length < 6) {
                          return 'password too short';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                        onTap: () {
                          submit();
                        },
                        child: AnimatedContainer(
                          alignment: Alignment.center,
                          height: 30,
                          width: changed ? 30 : 80,
                          duration: Duration(seconds: 1),
                          decoration: BoxDecoration(
                              color: Theme.of(context).buttonColor,
                              borderRadius:
                                  BorderRadius.circular(changed ? 15 : 7)),
                          child: Expanded(
                            child: Center(
                                child: changed
                                    ? Icon(Icons.done)
                                    : Text('Login',
                                        style: TextStyle(color: Colors.black))),
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
