import 'package:flutter/material.dart';
import 'text_section.dart';
import 'image_banner.dart';
import '../../model/location.dart';

class LocationDetails extends StatelessWidget {

  final int _locationId;

  LocationDetails(this._locationId);

  @override
  Widget build(BuildContext context) {
    // final locations = Location.fetchById(this._locationId);
    final location = Location.fetchById(this._locationId);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath, 200.0),
          ]..addAll(textSection(location)),
        ),
      ),
    );
  }

  List<Widget> textSection(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
