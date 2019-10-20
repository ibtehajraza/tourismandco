import 'package:flutter/material.dart';
import './locations/locations.dart';
import './location_detail/location_detail.dart';
import 'package:touristandco/style.dart';

const LocationsRoute = '/';
const LocationDetailsRoute = '/LocationDetails';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

// For dynamic routing.
  RouteFactory _routes() {
    return (settigns) {
      final Map<String, dynamic> args = settigns.arguments;
      Widget screen;
      switch (settigns.name) {
        case LocationsRoute:
          screen = new Locations();
          break;
        case LocationDetailsRoute:
          screen = new LocationDetails(args['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext contex) => screen);
    };
  }


// For Themeing purposses.
  ThemeData _theme(){
    return ThemeData(
        appBarTheme: AppBarTheme(textTheme: TextTheme(title: AppBarTextStyle)),
        textTheme: TextTheme(title: TitleTextStyle, body1: Body1TextStyle),
      );
  }


}
