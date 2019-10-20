import 'location_facts.dart';

class Location {
  int id;
  String name;
  String imagePath;
  List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);


  static Location fetchById(int id){
    // List<Location> locations = ;
    return fetchAll().elementAt(id);
  }


  static List<Location> fetchAll() {
    return [
      Location(
          0, 'Arashiyama Bamboo Grove', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(1, 'Mount Fuji', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(2, 'Moriama', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
    ];
  }
}
