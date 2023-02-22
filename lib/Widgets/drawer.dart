import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://images.unsplash.com/photo-1494790108377-"
        "be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8d"
        "XNlcnxlbnwwfHwwfHw%3D&w=1000&q=80";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                    accountName: Text("Sadia"),
                    accountEmail: Text("Sadia.nury@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
                color: Colors.white,),
              title: Text("Home",textScaleFactor: 1.2,
              style: TextStyle(color:
              Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                color: Colors.white,),
              title: Text("Profile",textScaleFactor: 1.2,
                style: TextStyle(color:
                Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,
                color: Colors.white,),
              title: Text("Email me",textScaleFactor: 1.2,
                style: TextStyle(color:
                Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
