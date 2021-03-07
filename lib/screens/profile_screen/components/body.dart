import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constant.dart';
import 'package:flutter_ecommerce_app/screens/profile_screen/components/profile_menu.dart';
import 'package:flutter_ecommerce_app/screens/profile_screen/components/profile_pic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        ProfileMenu(
            icon: "assets/icons/User Icon.svg",
            text: "My Account",
            press: () {}),
        ProfileMenu(
            icon: "assets/icons/Bell.svg",
            text: "Notification",
            press: () {}),
        ProfileMenu(
            icon: "assets/icons/Question mark.svg",
            text: "Settings",
            press: () {}),
        ProfileMenu(
            icon: "assets/icons/User Icon.svg",
            text: "Help Center",
            press: () {}),
        ProfileMenu(
            icon: "assets/icons/Log out.svg",
            text: "Log Out",
            press: () {}),
      ],
    );
  }
}

