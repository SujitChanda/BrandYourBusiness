import 'package:flutter/material.dart';

class PopularItemsModel {
  final int id;
  final String image;
  final String itemName;
  final String itemDescription;
  final double stars;
  final int reviews;

  PopularItemsModel({
    @required this.id,
    @required this.image,
    @required this.itemName,
    @required this.itemDescription,
    @required this.stars,
    @required this.reviews,
  });
}

List<PopularItemsModel> popularItemsModel = [
  PopularItemsModel(
      id: 1,
      image: "assets/PopularBusinesses/c1.jpg",
      itemName: 'Tu Tatto Nha Trang',
      itemDescription: 'Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text',
      reviews: 3,
      stars: 3.5),
  PopularItemsModel(
      id: 2,
      image: "assets/PopularBusinesses/c2.jpg",
      itemName: 'City Street Coffee',
      itemDescription: 'Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text',
      reviews: 10,
      stars: 4.5),
  PopularItemsModel(
      id: 3,
      image: "assets/PopularBusinesses/c3.jpg",
      itemName: 'A Consortium of Music',
      itemDescription: 'Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text',
      reviews: 2,
      stars: 5),
  PopularItemsModel(
      id: 4,
      image: "assets/PopularBusinesses/c4.jpg",
      itemName: 'The Goggi Restaurant',
      itemDescription: 'Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text',
      reviews: 0,
      stars: 0),
];
