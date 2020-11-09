import 'package:brand_our_business/models/popular_businessItems_model.dart';
import 'package:brand_our_business/models/recentPost_Items_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RecentPostItems extends StatefulWidget {
  RecentPostItems({Key key}) : super(key: key);

  @override
  _RecentPostItemsState createState() => _RecentPostItemsState();
}

class _RecentPostItemsState extends State<RecentPostItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: GridView.builder(
          physics: ClampingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 1.3, crossAxisCount: 2),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (_, index) {
            return SizedBox(
              height: double.infinity,
              //color: Colors.red,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.red, width: 0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          //  SizedBox(height: 5),
                          Stack(children: <Widget>[
                            Hero(
                              tag: recentPostItemsModel[index].image.toString(),
                              child: Image(
                                image: AssetImage(recentPostItemsModel[index].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Container(
                            //   decoration: BoxDecoration(
                            //     color:
                            //         Colors.greenAccent.withOpacity(0.2),
                            //     borderRadius: BorderRadius.only(
                            //       topLeft: Radius.circular(8.0),
                            //       topRight: Radius.circular(0),
                            //       bottomLeft: Radius.circular(0),
                            //       bottomRight: Radius.circular(8.0),
                            //     ),
                            //   ),
                            //   child: Padding(
                            //     padding: const EdgeInsets.only(
                            //       left: 10,
                            //       right: 3,
                            //     ),
                            //     child: AutoSizeText(
                            //         "${_percentage(product.oldPrice, product.price)}% off",
                            //         style: Theme.of(context)
                            //             .textTheme
                            //             .bodyText2
                            //             .copyWith(color: Colors.green)),
                            //   ),
                            // ),
                          ]),
                          Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200].withOpacity(0.7),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(4.0),
                                    bottomRight: Radius.circular(4.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 2, right: 2),
                                      child: Container(
                                        child: Text(
                                          recentPostItemsModel[index].itemName,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .copyWith(
                                                  fontSize: 16,
                                                  color: Colors.red),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 2, right: 2),
                                      child: Container(
                                        child: Text(
                                            " ${recentPostItemsModel[index].itemDescription}",
                                            maxLines: 2,
                                            softWrap: false,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2
                                                .copyWith(
                                                    height: 1,
                                                    letterSpacing: 0.5)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 2, right: 2),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: SmoothStarRating(
                                              rating: recentPostItemsModel[index].stars,
                                              isReadOnly: false,
                                              size: 15,
                                              filledIconData: Icons.star,
                                              halfFilledIconData:
                                                  Icons.star_half,
                                              defaultIconData:
                                                  Icons.star_border,
                                              color: Colors.black,
                                              borderColor: Colors.red,
                                              starCount: 5,
                                              allowHalfRating: true,
                                              spacing: 2.0,
                                              onRated: (value) {
                                                print("rating value -> $value");
                                                // print("rating value dd -> ${value.truncate()}");
                                              },
                                            ),
                                          ),
                                          Text(
                                              "(${recentPostItemsModel[index].reviews} Reviews)")
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                      ),
                    )
                  ],
                ),
              ),
            );
          }
          //shrinkWrap: true,
          // childAspectRatio: 1 / 1.5,

          ),
    );
  }
}
