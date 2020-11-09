import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  CategoryList({Key key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
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
          height:105,
          child: ListView(
            //controller: PageController(viewportFraction: 0.8),
            scrollDirection: Axis.horizontal,
            // pageSnapping: true,

            shrinkWrap: true,
            children: <Widget>[
              Category("Bar",'assets/Categories/bar_icon.png'),
              Category("Club",'assets/Categories/club_icon.png'),
              Category("Hobbies",'assets/Categories/hobbies_icon.png'),
              Category("Hotel",'assets/Categories/hotel_icon.png'),
              Category("Meusium",'assets/Categories/meusium_icon.png'),
              Category("Restaurant",'assets/Categories/restaurant_icon.png'),
              Category("Store",'assets/Categories/store_icon.png'),
              
             
              
            ],
          )),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
 
  Category(this.image_caption, this.image_location, );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6),
      child: Column(children: <Widget>[
        InkWell(
          onTap: (){},
                  child: Container(
            
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 0.2),
                        
                //color: Colors.red,
                image: DecorationImage(
                    image: AssetImage(image_location),
                    fit: BoxFit.cover,
                    // colorFilter: ColorFilter.mode(
                    //     Colors.black.withOpacity(0.3), BlendMode.srcOver)
                        ),
                borderRadius: BorderRadius.circular(70)),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 0),
            child: AutoSizeText(
              image_caption,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                color: Colors.black,fontSize: 14, 
              ),
            ),
          )
      ]),
    );
  }
}
