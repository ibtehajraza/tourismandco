import 'package:flutter/material.dart';
import '../app.dart';
import '../../model/location.dart';

class Locations extends StatelessWidget {
  final locations = Location.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Locations"),
      ),
      body: _simpleListView(context),
    );
  }

  void _onLocationTap(BuildContext context, int id) {
     print ('do something');
    Navigator.pushNamed(context, LocationDetailsRoute, arguments: {"id": id});
  }

  Widget _simpleListView(BuildContext context){

    return ListView(
        children: locations
            .map(
              (location) => GestureDetector(
                    child: Text(location.name),
                    onTap: () => _onLocationTap(context, location.id),
                  ),
            )
            .toList(),
    );
  }


  /*Widget _listViewBuilder(){

    return ListView.builder(
      itemCount: locations.length,
      itemBuilder: (context, index){
        _itemBuilder(context, locations[index]),
      },
    );
  }*/

 /* Widget  _itemBuilder(BuildContext context, Location location){
    return GestureDetector(
      onTap: () => _onLocationTap(context, location.id),
      child: Container(
        height: 245.0,
        child: Stack(
          children: <Widget>[
            ImageBanner(location.imagePath ),
          ],
        ),
      ),
    );
  }
*/
  
}
