import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/sign_in/components/sign_form.dart';
import 'package:flutter_ecommerce_app/screens/sign_in/components/social_card.dart';import 'package:flutter_ecommerce_app/size_config.dart';

import '../../../theme.dart';
import 'no_account_text.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Welcome back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign in with your email and password \n or continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.04,),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight*0.04,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(image: "assets/icons/google-icon.svg", press: () {}),
                    SocialCard(image: "assets/icons/facebook-2.svg", press: () {}),
                    SocialCard(image: "assets/icons/twitter.svg", press: () {}),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

