import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constant.dart';
import 'package:flutter_ecommerce_app/screens/complete_profile/components/complete_profile_form.dart';
import 'package:flutter_ecommerce_app/size_config.dart';

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
              SizedBox(height: SizeConfig.screenHeight*0.02,),
              Text("Complete Profile", style: headingStyle),

              Text(
                "Complete your detail or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight*0.07,),
              CompleteProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
