import'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/custom_nav_bar.dart';
import 'package:flutter_ecommerce_app/enum.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: Text('Profile'),
      ),
      body: Body(),
      bottomNavigationBar: CustomNavBar(selectedMenu: MenuState.profile,),
    );
  }
}
