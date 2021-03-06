import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/home_screen/home_screen.dart';
import 'package:flutter_ecommerce_app/screens/splash/components/default_button.dart';
import 'package:flutter_ecommerce_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Text(
          "Login success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(text: "Back to home", press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            })),
        Spacer(),
      ],
    );
  }
}
