import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            _drawerHead(context),
            SizedBox(height: 2),
            _menuItem("Home", EvaIcons.homeOutline, () {
              //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
            }, Theme.of(context).iconTheme.color),
            // SizedBox(height: 2),
            _menuItem("Account", EvaIcons.personOutline, () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Account()));
            }, Theme.of(context).iconTheme.color),
            // SizedBox(height: 2),
            _menuItem("My Orders", EvaIcons.carOutline, () {
              //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyOrders()));
            }, Theme.of(context).iconTheme.color),
            // SizedBox(height: 2),
            _menuItem("My Cart", EvaIcons.shoppingCartOutline, () {
              //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Cart()));
            }, Theme.of(context).iconTheme.color),
            SizedBox(height: 2),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                color: Colors.black54,
              ),
            ),
            _menuItem("Settings", EvaIcons.optionsOutline, () {}, Colors.amber),
            // SizedBox(height: 2),
            _menuItem("About", EvaIcons.questionMarkCircleOutline, () {},
                Colors.green),
            // SizedBox(height: 2),
            _menuItem("Log Out", EvaIcons.powerOutline, () {}, Colors.red),
            SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: AspectRatio(
                  aspectRatio: 15 / 6,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerHead(context) {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/drawer_bg.jpg"),
          fit: BoxFit.cover,
        ),
        // color: Colors.deepOrange[400],
        // borderRadius: BorderRadius.circular(10),
      ),
      accountEmail: AutoSizeText("S.chanda@outlook.com",
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: Colors.white, fontSize: 10)),
      accountName: AutoSizeText("Sujit Chanda",
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: Colors.white)),
      currentAccountPicture: GestureDetector(
        child: Container(
          // height: 150,
          // width: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Colors.black,
            ),
            boxShadow: [
              BoxShadow(
                spreadRadius: 2,
                blurRadius: 10,
                color: Colors.white.withOpacity(0.5),
                // offset: Offset(0,10)
              )
            ],
            image: DecorationImage(
                image: AssetImage('assets/user_pic.jpg'), fit: BoxFit.cover),
          ),
        ),

        // CircleAvatar(
        //   backgroundColor: Colors.black,
        //   child: CircleAvatar(
        //     radius: 34.5,
        //       backgroundColor: Colors.white,
        //               child: new CircleAvatar(
        //       radius: 33.5,

        //       backgroundImage: ExactAssetImage('assets/mypic.jpeg'),
        //     ),
        //   ),
        // ),
      ),

      // ClipRRect(
      //   borderRadius: BorderRadius.circular(70),
      //   child: Image(
      //     image: NetworkImage(
      //         "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
      //     width: 70,
      //     height: 70,
      //     fit: BoxFit.cover,
      //   ),
      // ),
    );
  }

  Widget _menuItem(
      String _title, IconData _icon, Function _onTap, Color _iconColor) {
    return InkWell(
        onTap: _onTap,
        child: ListTile(
          title: Text(
            "$_title",
          ),
          leading: Icon(_icon, color: _iconColor),
        ));
  }
}
