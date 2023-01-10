// ignore_for_file: use_key_in_widget_constructors, no_leading_underscores_for_local_identifiers, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Text(
                  'Welcome to WEEE',
                  style: TextStyle(
                      letterSpacing: 1.2,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 113, 113, 113)),
                ),
              ),
              FaIcon(
                FontAwesomeIcons.circleUser,
                size: 100,
                color: Color.fromARGB(255, 24, 121, 37),
              ),
              // CircleAvatar(
              //   backgroundImage: NetworkImage(
              //       'https://www.citypng.com/public/uploads/small/11639594314mvt074h0zt5cijvfdn7gqxbrya72bzqulyd5bhqhemb5iasfe7gbydmr2jxk8lcclcp6qrgaoiuiavf4sendwc3jvwadddqmli2d.png'),
              //   backgroundColor: Colors.transparent,
              // ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 50),
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 25,
                          ),
                          decoration: const InputDecoration(
                              hintText: 'Username or Email',
                              hintStyle:
                                  TextStyle(fontSize: 25, letterSpacing: 1.2)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 50),
                        child: TextFormField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                          decoration: const InputDecoration(
                              hintText: 'Password',
                              hintStyle:
                                  TextStyle(fontSize: 25, letterSpacing: 1.2)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: ElevatedButton(
                          onPressed: () {
                            // Validate will return true if the form is valid, or false if
                            // the form is invalid.
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamed(context, '/home');
                              // Process data.
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text(
                              'LOG IN',
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.google,
                                size: 60,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.whatsapp,
                                size: 60,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.instagram,
                                size: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 113, 113, 113)),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/second');
                              },
                              child: Text('Sign Up',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 29, 93, 158))),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
