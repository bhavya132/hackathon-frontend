import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
import 'dart:typed_data';
import '../../../constants.dart';
import '../../../main.dart';
import 'icon_card.dart';
import 'package:plant_app/brain/SpeciesClass.dart';
class ImageAndIcons extends StatelessWidget {
 
  const ImageAndIcons({
    Key key,
    this.size,
    this.img,
   
  }) : super(key: key);

  final Size size;  
   final String img;
   
   
  @override
  Widget build(BuildContext context) {
    print("*****************");
    
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 2),
      child: SizedBox(
        height: size.height * 0.9,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    IconCard(icon: "", sno:'1'),
                    IconCard(icon: "", sno:'3'),
                    IconCard(icon: "assets/icons/search.svg", sno:'2'),
                    // IconCard(icon: "assets/icons/icon_4.svg", sno:'4'),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: Image.network(Provider.of<Data>(context).actualSpeciesInfo.plantImg).image),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

