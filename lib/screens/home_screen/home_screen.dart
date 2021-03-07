import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/custom_nav_bar.dart';
import 'package:flutter_ecommerce_app/enum.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomNavBar(selectedMenu: MenuState.home),
    );
  }
}
