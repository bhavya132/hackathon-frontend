import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.title,
    this.country,
    // this.price,
  }) : super(key: key);

  final String title, country;
  // final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         Text(
           "$title\n",
           style: TextStyle(
             fontWeight: FontWeight.bold,
             color: kTextColor,
             fontSize: 38,
             height: 0.7,
           ),
         ),
        //  Text(
        //    "Origin: $country\n",
        //    style:TextStyle(
        //      color: kPrimaryColor,
        //      fontWeight: FontWeight.w400,
        //      fontSize: 30,
        //      height: 0.5,

        //    ),
        //  ),
      ],),
    );
  }
}
