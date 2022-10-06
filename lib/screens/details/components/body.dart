import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/brain/SpeciesClass.dart';
import '../../../main.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  final SpeciesInfo actualSpeciesInfo;
  Body({@required this.actualSpeciesInfo});
  
 
     
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(actualSpeciesInfo);
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size, img:actualSpeciesInfo.plantImg),
          TitleAndPrice(title:Provider.of<Data>(context).actualSpeciesInfo.plantName),
          SizedBox(height: kDefaultPadding),
         
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11.0),
              child: Text(
                Provider.of<Data>(context).actualSpeciesInfo.Description,
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.w800,),
                textAlign: TextAlign.left,
              ),
            ),),
        ],
      ),
    );
    
  }
}


