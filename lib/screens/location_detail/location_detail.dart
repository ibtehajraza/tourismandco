import 'package:flutter/material.dart';
import 'text_section.dart';
import 'image_banner.dart';

class LocationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/kiyomizu-dera.jpg"),
          TextSection('this is header',
              'this is body but this is just some text that is gonna overflow and you know it is over flowing, right?'),
          TextSection('this is second header', 'this is second body'),
          TextSection('This is header3',
              'just some text that know it is over flowing, right?'),
        ],
      ),
    );
  }
}
