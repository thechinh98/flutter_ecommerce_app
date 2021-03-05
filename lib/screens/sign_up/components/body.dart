import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constant.dart';
import 'package:flutter_ecommerce_app/screens/sign_in/components/custom_suffix_icon.dart';
import 'package:flutter_ecommerce_app/screens/sign_in/components/social_card.dart';
import 'package:flutter_ecommerce_app/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter_ecommerce_app/screens/splash/components/default_button.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.03,),
              Text("Register Account", style: headingStyle),
              Text(
                "Complete your details or continue\n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight*0.08,),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight*0.08,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(image: "assets/icons/google-icon.svg", press: () {}),
                  SocialCard(image: "assets/icons/facebook-2.svg", press: () {}),
                  SocialCard(image: "assets/icons/twitter.svg", press: () {}),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text("By continuing you confirm that you are agree \nwith our Term and Condition", textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}
