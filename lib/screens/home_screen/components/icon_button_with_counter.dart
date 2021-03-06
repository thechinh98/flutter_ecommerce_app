import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class IconButtonWithCounter extends StatelessWidget {
  const IconButtonWithCounter({
    Key key,
    @required this.svgSrc,
    this.numOfItem = 0,
    @required this.press,
  }) : super(key: key);
  final String svgSrc;
  final int numOfItem;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if(numOfItem != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                  height: getProportionateScreenWidth(16),
                  width: getProportionateScreenWidth(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFFF4848),
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: Colors.white),
                  ),
                  child: Center(
                    child: Text("$numOfItem",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(10),
                          height: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
            )
        ],
      ),
    );
  }
}
