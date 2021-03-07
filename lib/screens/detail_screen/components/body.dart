import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/rounded_icon_button.dart';
import 'package:flutter_ecommerce_app/constant.dart';
import 'package:flutter_ecommerce_app/models/Product.dart';
import 'package:flutter_ecommerce_app/screens/detail_screen/components/color_dots.dart';
import 'package:flutter_ecommerce_app/screens/detail_screen/components/product_description.dart';
import 'package:flutter_ecommerce_app/screens/detail_screen/components/product_images.dart';
import 'package:flutter_ecommerce_app/screens/splash/components/default_button.dart';
import 'package:flutter_ecommerce_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductDescription(
                  product: product,
                  press: () {},
                ),
                Column(
                  children: [
                    TopRoundedContainer(
                      color: Color(0xFF6F7F9),
                      child: ColorDots(product: product),
                    ),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            top: getProportionateScreenWidth(5),
                            bottom: getProportionateScreenWidth(40)),
                        child: DefaultButton(
                          text: "Add to cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
