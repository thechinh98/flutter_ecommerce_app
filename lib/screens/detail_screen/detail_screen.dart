import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/models/Product.dart';
import 'package:flutter_ecommerce_app/screens/detail_screen/components/custom_app_bar.dart';
import 'package:flutter_ecommerce_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/rounded_icon_button.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(),
    );
  }
}

class ProductDetailsArgument {
  final Product product;

  ProductDetailsArgument({@required this.product});
}
