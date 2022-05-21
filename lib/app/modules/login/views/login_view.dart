import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../widgets/login_textfield.dart';
import '../controllers/login_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 42.0,
            ),
            Text(
              'Login',
              style: TextStyle(
                color: Color(0xff058687),
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LoginTextField(
                controller: emailController,
                hintText: 'Email',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LoginTextField(
                controller: passwordController,
                hintText: 'Password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () async {
                  final SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  sharedPreferences.setString('email', emailController.text);
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not Resgister Yet?  '),
                      Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
