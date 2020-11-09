import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

class MyMultiDrawer extends StatefulWidget {
  MyMultiDrawer({Key key}) : super(key: key);

  @override
  _MyMultiDrawerState createState() => _MyMultiDrawerState();
}

class _MyMultiDrawerState extends State<MyMultiDrawer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
        child: MultiLevelDrawer(
          backgroundColor: Colors.white,
          rippleColor: Colors.red.shade200,
          subMenuBackgroundColor: Colors.grey.shade200,
          divisionColor: Colors.red,
          header: _drawerHead(context),
          children: [

            
            MLMenuItem(
                leading: Icon(EvaIcons.personOutline),
                content: Text(
                  "Account",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                onClick: () {}),
            MLMenuItem(
              leading: Icon(
                EvaIcons.optionsOutline,
                color: Colors.amber,
              ),
              content: Text(
                "Settings",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onClick: () {},
            ),
            MLMenuItem(
                leading: Icon(EvaIcons.briefcaseOutline, color: Colors.blue),
                trailing: Icon(
                  EvaIcons.arrowRightOutline,
                  color: Colors.black,
                ),
                content: Text(
                  "Business",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                subMenuItems: [
                  MLSubmenu(
                      onClick: () {},
                      submenuContent: Text("Need a Website ?",
                          style: Theme.of(context).textTheme.bodyText2)),
                  MLSubmenu(
                      onClick: () {},
                      submenuContent: Text("Promote Your Business",
                          style: Theme.of(context).textTheme.bodyText2)),
                  MLSubmenu(
                      onClick: () {},
                      submenuContent: Text("Advertise with Us",
                          style: Theme.of(context).textTheme.bodyText2)),
                  MLSubmenu(
                      onClick: () {},
                      submenuContent: Text("Add Your Business",
                          style: Theme.of(context).textTheme.bodyText2)),
                  MLSubmenu(
                      onClick: () {},
                      submenuContent: Text("Business Center",
                          style: Theme.of(context).textTheme.bodyText2)),
                  MLSubmenu(
                      onClick: () {},
                      submenuContent: Text("Handling Review",
                          style: Theme.of(context).textTheme.bodyText2)),
                ],
                onClick: () {}),
                MLMenuItem(
                leading: Icon(EvaIcons.questionMarkCircleOutline, color: Colors.green),
                trailing: Icon(
                  EvaIcons.arrowRightOutline,
                  color: Colors.black,
                ),
                content: Text(
                  "About Us",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                subMenuItems: [

                  MLSubmenu(
                      onClick: () {},
                      submenuContent: Text("About",
                          style: Theme.of(context).textTheme.bodyText2)),
                  MLSubmenu(
                      onClick: () {},
                      submenuContent: Text("Blog",
                          style: Theme.of(context).textTheme.bodyText2)),
                  MLSubmenu(
                      onClick: () {},
                      submenuContent: Text("Newsletter",
                          style: Theme.of(context).textTheme.bodyText2)),
                  MLSubmenu(
                      onClick: () {},
                      submenuContent: Text("Reviews",
                          style: Theme.of(context).textTheme.bodyText2)),
                  MLSubmenu(
                      onClick: () {},
                      submenuContent: Text("Deals",
                          style: Theme.of(context).textTheme.bodyText2)),
                  MLSubmenu(
                      onClick: () {},
                      submenuContent: Text("Local Stores",
                          style: Theme.of(context).textTheme.bodyText2)),
                           MLSubmenu(
                      onClick: () {},
                      submenuContent: Text("Careers",
                          style: Theme.of(context).textTheme.bodyText2)),
                ],
                onClick: () {}),

                 MLMenuItem(
                leading: Icon(EvaIcons.awardOutline, color: Colors.deepPurple),
                content: Text(
                  "Career",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                onClick: () {}),


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
              .copyWith(color: Colors.white, fontSize: 14)),
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

 
}
