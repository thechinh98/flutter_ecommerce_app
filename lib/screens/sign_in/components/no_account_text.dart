import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/forgot_password/forgot_password_screen.dart';

import '../../../constant.dart';
import '../../../size_config.dart';


class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
          },
          child: Text(
            "Sign up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
