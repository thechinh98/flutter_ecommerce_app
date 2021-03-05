import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/otp/otp_screen.dart';
import 'package:flutter_ecommerce_app/screens/sign_in/components/custom_suffix_icon.dart';
import 'package:flutter_ecommerce_app/screens/splash/components/default_button.dart';
import 'package:flutter_ecommerce_app/size_config.dart';

import '../../../constant.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String firstName;
  String lastName;
  String phoneNumber;
  String address;
  List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameInputField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildLastNameInputField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPhoneNumberInputField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildAddressInputField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // pass to next screen
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Text(
            "By continuing you confirm that you agree \nwith our Term and Condition",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  TextFormField buildFirstNameInputField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      keyboardType: TextInputType.name,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNamelNullError)) {
          setState(() {
            errors.remove(kNamelNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kNamelNullError)) {
          setState(() {
            errors.add(kNamelNullError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your first Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildLastNameInputField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      keyboardType: TextInputType.name,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNamelNullError)) {
          setState(() {
            errors.remove(kNamelNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kNamelNullError)) {
          setState(() {
            errors.add(kNamelNullError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your last Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildPhoneNumberInputField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue,
      keyboardType: TextInputType.phone,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone number",
        hintText: "Enter your phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField buildAddressInputField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      keyboardType: TextInputType.streetAddress,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(() {
            errors.remove(kAddressNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kAddressNullError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: "assets/icons/Location point.svg"),
      ),
    );
  }
}
