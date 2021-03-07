import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_ecommerce_app/screens/login_success/login_success_screen.dart';
import 'package:flutter_ecommerce_app/screens/sign_in/components/custom_suffix_icon.dart';
import 'package:flutter_ecommerce_app/screens/sign_in/components/error_form.dart';
import 'package:flutter_ecommerce_app/screens/splash/components/default_button.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  bool remember = false;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            buildEmailInputField(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            passwordInputField(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  },
                ),
                Text("Remember me"),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, ForgotPasswordScreen.routeName);
                    },
                    child: Text("Forgot password",
                        style:
                            TextStyle(decoration: TextDecoration.underline))),
              ],
            ),
            FormError(errors: errors),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState.validate()) {
                    Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                  }
                }),
          ],
        ),
      ),
    );
  }

  TextFormField passwordInputField() {
    return TextFormField(
      obscureText: true,
      onChanged: (value) {
        if (!value.isEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailInputField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
