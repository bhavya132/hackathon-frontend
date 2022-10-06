import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/routes.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/screens/signin/sign_in_screen.dart';
import 'package:provider/provider.dart';

import 'brain/SpeciesClass.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String apiKey = "AIzaSyAy5X9hubCeQec8cDOjYecXMURPJHVa5Kw";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Data(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SignInScreen.routeName,
      // initialRoute: HomeScreen.routeName,
      routes: routes,
    )
    );
  }
}

class Data with ChangeNotifier {
  SpeciesInfo actualSpeciesInfo;
  void update(input) {
    actualSpeciesInfo = input;
    notifyListeners();
  }
}