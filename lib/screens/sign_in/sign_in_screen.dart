import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/sign_in/components/body.dart';


class SigninScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in"),
      ),
      body: Body(),
    );
  }
}
