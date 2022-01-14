// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://instagram.fpnq2-1.fna.fbcdn.net/v/t51.2885-19/s320x320/240823922_550884186031189_8059789300518714890_n.jpg?_nc_ht=instagram.fpnq2-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=k7VIFPltjHgAX8vKRD-&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT9-0VnfhYMoxEa1TsV0iGFr1IwHfihriGeu2EOsVTvpdA&oe=61E78A5E&_nc_sid=7bff83";
    return Drawer(
      child: Container(
         color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
               margin: EdgeInsets.zero,
               accountName: Text("Pranav Gaikwad"),
               accountEmail: Text("pranavg2907@gmail.com"),
               currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
               ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
                 color:Colors.white,              
              ),
              title: Text("Home",
               textScaleFactor: 1.2,
               style : TextStyle(
                color: Colors.white,
              ),
               )
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
                ),
                ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  "Email me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}