import 'package:brand_our_business/models/popular_businessItems_model.dart';
import 'package:brand_our_business/widgets/category_listView.dart';
import 'package:brand_our_business/widgets/country_listView.dart';
import 'package:brand_our_business/widgets/drawer.dart';
import 'package:brand_our_business/widgets/imageCarousel.dart';
import 'package:brand_our_business/widgets/multi_drawer.dart';
import 'package:brand_our_business/widgets/popularBusinessItems_gridView.dart';
import 'package:brand_our_business/widgets/recentPost_Items_gridView.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/services.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.red,
      // statusBarIconBrightness: Brightness.dark
    ));

    //  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.red,
    //   statusBarBrightness: Brightness.dark,
    // //  statusBarIconBrightness: Brightness.dark,

    //   systemNavigationBarColor: Colors.black,
    //   systemNavigationBarIconBrightness: Brightness.light,
    // ));

    return Scaffold(
      key: drawerKey,
      drawerEdgeDragWidth: 0,
     drawer: MyDrawer(),

     // drawer: MyMultiDrawer(),

      appBar: AppBar(
        //centerTitle: true,
        title: Container(
            height: MediaQuery.of(context).padding.top + 10,
            child: Image.asset("assets/logo.png", fit: BoxFit.cover)),
        backgroundColor: Colors.black,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(EvaIcons.menu2Outline,
              color: Theme.of(context).iconTheme.color,
              size: Theme.of(context).iconTheme.size),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(EvaIcons.searchOutline,
                color: Theme.of(context).iconTheme.color,
                size: Theme.of(context).iconTheme.size),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: AutoSizeText("Select Country",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            CountryList(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Divider(
                color: Colors.black54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: AutoSizeText("Categories",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            SizedBox(height: 5),
            CategoryList(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Divider(
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                    child: AutoSizeText("Most Popular Businesses",
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                  child: AutoSizeText("View All",
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: Colors.red,
                            decoration: TextDecoration.underline,
                          )),
                ),
              ],
            ),
            SizedBox(height: 10),
            PopularBusinessItems(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Divider(
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 10),
            ImageCarousel(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                color: Colors.black54,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                    child: AutoSizeText("Recent Posts",
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                  child: AutoSizeText("View All",
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: Colors.red,
                            decoration: TextDecoration.underline,
                          )),
                ),
              ],
            ),
            SizedBox(height: 10),
            RecentPostItems(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
