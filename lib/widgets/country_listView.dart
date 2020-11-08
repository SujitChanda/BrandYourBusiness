import 'package:flutter/material.dart';

class CountryList extends StatefulWidget {
  CountryList({Key key}) : super(key: key);

  @override
  _CountryListState createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  double height;
  double width;

  _height() {
    return height = MediaQuery.of(context).size.height;
  }

  _width() {
    return width = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1, right: 1),
      child: SizedBox(
          height: 150,
          child: ListView(
            //controller: PageController(viewportFraction: 0.8),
            scrollDirection: Axis.horizontal,
            // pageSnapping: true,

            shrinkWrap: true,
            children: <Widget>[
              Country("New Zealand",'assets/Countries/location1.jpg', 70, 5),
              Country("Australia", 'assets/Countries/location2.jpg', 70, 5),
              Country("New York", 'assets/Countries/location3.jpg', 70, 5),
              Country("Canada", 'assets/Countries/location4.jpg', 70, 5),
             
              
            ],
          )),
    );
  }
}

class Country extends StatelessWidget {
  final String image_location;
  final String image_caption;
  final double left;
  final double top;

  Country(this.image_caption, this.image_location, this.left, this.top);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6),
      child: Stack(children: <Widget>[
        Container(
          
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 0.2),
                      
              //color: Colors.red,
              image: DecorationImage(
                  image: AssetImage(image_location),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.srcOver)),
              borderRadius: BorderRadius.circular(8)),
        ),
        Positioned(
          top:100,
                  child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              image_caption,
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold
              ),
            ),
          ),
        )
      ]),
    );
  }
}
