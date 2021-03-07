import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ecommerce_app/screens/home_screen/components/popular_products.dart';
import 'package:flutter_ecommerce_app/screens/home_screen/components/special_offer.dart';
import 'package:flutter_ecommerce_app/size_config.dart';


import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            SpecialOffers(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            PopularProducts(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
          ],
        ),
      ),
    );
  }
}
