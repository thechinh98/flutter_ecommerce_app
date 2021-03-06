import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constant.dart';
import 'package:flutter_ecommerce_app/models/Product.dart';
import 'package:flutter_ecommerce_app/screens/home_screen/components/icon_button_with_counter.dart';
import 'package:flutter_ecommerce_app/screens/home_screen/components/popular_products.dart';
import 'package:flutter_ecommerce_app/screens/home_screen/components/product_card.dart';
import 'package:flutter_ecommerce_app/screens/home_screen/components/search_field.dart';
import 'package:flutter_ecommerce_app/screens/home_screen/components/section_title.dart';
import 'package:flutter_ecommerce_app/screens/home_screen/components/special_offer.dart';
import 'package:flutter_ecommerce_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'special_offer_card.dart';

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
