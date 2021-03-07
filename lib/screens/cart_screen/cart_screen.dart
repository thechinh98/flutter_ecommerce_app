import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constant.dart';
import 'package:flutter_ecommerce_app/models/Cart.dart';
import 'package:flutter_ecommerce_app/screens/splash/components/default_button.dart';
import 'package:flutter_ecommerce_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Your cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCart.length} items",
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15),horizontal: getProportionateScreenWidth(30)),
      //fixed height for only demo
      height: 174,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(offset: Offset(0, -15), blurRadius: 20, color: Color(0xFFDADADA).withOpacity(0.15)),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: getProportionateScreenWidth(40),
                width: getProportionateScreenWidth(40),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset("assets/icons/receipt.svg"),
              ),
              Spacer(),
              Text("Add voucher code"),
              const SizedBox(width: 10,),
              Icon(Icons.arrow_forward_ios, size: 12, color: kTextColor,),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: "Total\n",
                  children: [
                    TextSpan(
                      text: "\$337.15",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      )
                    )
                  ]
                )
              ),
              SizedBox(
                width: getProportionateScreenWidth(190),
                child: DefaultButton(
                  text: "Check out",
                  press: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
