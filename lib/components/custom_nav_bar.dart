import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constant.dart';
import 'package:flutter_ecommerce_app/enum.dart';
import 'package:flutter_ecommerce_app/screens/home_screen/home_screen.dart';
import 'package:flutter_ecommerce_app/screens/profile_screen/profile_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key key,
    this.selectedMenu,
  }) : super(key: key);
  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    final Color inactiveColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            )
          ]),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inactiveColor,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
                color: MenuState.favorite == selectedMenu
                    ? kPrimaryColor
                    : inactiveColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Chat bubble Icon.svg",
                color: MenuState.message == selectedMenu
                    ? kPrimaryColor
                    : inactiveColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : inactiveColor,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, ProfileScreen.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
