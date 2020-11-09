import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ImageCarousel extends StatefulWidget {
  ImageCarousel({Key key}) : super(key: key);

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
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
      padding: const EdgeInsets.only(left:8, right:8, bottom: 16),
      child: AspectRatio(
        aspectRatio: 1/0.5,
              child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8)
          ),
            //height: _height() * 0.25,
            //width: 200,
            child: Carousel(
              boxFit: BoxFit.fill,
              images: [
                AssetImage("assets/ads/ad1.png"),
                AssetImage("assets/ads/ad2.png"),
                AssetImage("assets/ads/ad3.png"),
                AssetImage("assets/ads/ad4.png"),
                AssetImage("assets/ads/ad5.png"),
              ],
              //autoplay: true,
              autoplayDuration: Duration(seconds: 4),
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 1500),
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.transparent,
              dotSize: 4.0,
              dotColor: Theme.of(context).colorScheme.secondary,
            )),
      ),
    );
  }
}
