import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/rounded_icon_button.dart';
import 'package:flutter_ecommerce_app/models/Product.dart';

import '../../../size_config.dart';
import 'color_dot.dart';


class ColorDots extends StatelessWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    int isSelected = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
                (index) => ColorDot(
              product: product,
              color: product.colors[index],
              isSelected: isSelected == index,
            ),
          ),
          Spacer(),
          RoundedIconBtn(iconData: Icons.remove, press: () {}),
          SizedBox(width: getProportionateScreenWidth(15),),
          RoundedIconBtn(iconData: Icons.add, press: () {})
        ],
      ),
    );
  }
}