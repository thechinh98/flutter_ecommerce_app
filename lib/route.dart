import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_ecommerce_app/screens/login_success/login_success_screen.dart';
import 'package:flutter_ecommerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_ecommerce_app/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SigninScreen.routeName: (context) => SigninScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
};