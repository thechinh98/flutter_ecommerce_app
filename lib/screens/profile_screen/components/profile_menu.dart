import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    this.text,
    this.icon,
    this.press,
  }) : super(key: key);
  final String text, icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        onPressed: press,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xFFF5F6F9),
        child: Row(
          children: [
            SvgPicture.asset(icon, width: 22, color: kPrimaryColor),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
