// import 'dart:js';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:translator/translator.dart';
import 'package:http/http.dart' as http;

import '../../../brain/SpeciesClass.dart';
import '../../../constants.dart';
import '../../../main.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  backgroundColor: kPrimaryColor,
  foregroundColor: kPrimaryColor,
  // minimumSize: Size(10, 10),

  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
);
final translator = GoogleTranslator();

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
    this.icon,
    this.sno,
  }) : super(key: key);

  final String icon, sno;
  //  final SpeciesInfo desc;

  @override
  Widget build(BuildContext context) {
    String text;
    if (sno == '1')
      text = "Hin";
    else if (sno == '3')
      text = "Eng";
    else
      text = "More";

    SpeciesInfo desc = Provider.of<Data>(context).actualSpeciesInfo;
    SpeciesInfo temp = desc;
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
        // padding: EdgeInsets.all(kDefaultPadding / 2.5),
        height: 120,
        width: 62,
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 20,
              color: kPrimaryColor.withOpacity(0.22),
            ),
            BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white,
            ),
          ],
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(icon),
              TextButton(
                style: flatButtonStyle,
                onPressed: (() => {
                      if (sno == '1')
                        translate(context, desc, "hi", temp)
                      else if (sno == '2')
                        search(desc.plantName)
                      else if (sno == '3')
                        translate(context, desc, "en", temp)
                    }),
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]));
  }
}

Future<void> translate(context, desc, lang, temp) async {
  final String apiKey = "AIzaSyAy5X9hubCeQec8cDOjYecXMURPJHVa5Kw";
  final response = await http.get(
    Uri.parse(
        'https://translation.googleapis.com/language/translate/v2?target=${lang}&key=${apiKey}&q=${temp.Description}'),
  );
  temp = desc;
  // print(response);
  if (response.statusCode == 200) {
    print(response.body);
    var d = jsonDecode(utf8.decode(response.bodyBytes));
    // print(d);
    // print(d['data']);
    // print(d['data']['translations']);
    desc.Description = d['data']['translations'][0]['translatedText'];
  }

// var translation = await translator.translate(desc.Description, from: 'en', to: 'it');
  // desc.Description=response;
  print(desc.Description);
  Provider.of<Data>(context, listen: false).update(desc);
}

Future<void> search(desc) async {
  String url = "https://www.google.com/search?q=" + desc;
  var urllaunchable =
      await canLaunch(url); //canLaunch is from url_launcher package
  if (urllaunchable) {
    await launch(url); //launch is from url_launcher package to launch URL
  } else {
    print("URL can't be launched.");
  }
}


void translate_(desc,lang,temp) async {
 final String apiKey = "AIzaSyAy5X9hubCeQec8cDOjYecXMURPJHVa5Kw";
  final response = await http.get(
      Uri.parse('https://translation.googleapis.com/language/translate/v2?target=${lang}&key=${apiKey}&q=${temp}'),
      );
       temp=desc;
  // print(response);
if (response.statusCode == 200) {
      print(response.body);
      var d = jsonDecode(utf8.decode(response.bodyBytes));
      // print(d);
      // print(d['data']);
      print(d['data']['translations']);
  }
}


