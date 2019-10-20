import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _header;
  final String _body;
  static const double _lrPad = 16.0;

  TextSection(this._header, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(_lrPad, 32.0, _lrPad, 4.0),
          child: Text(this._header, style: Theme.of(context).textTheme.title,),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(_lrPad, 10.0, _lrPad, _lrPad),
          child: Text(this._body, style: Theme.of(context).textTheme.body1,),
        ),
      ],
    );
  }
}
