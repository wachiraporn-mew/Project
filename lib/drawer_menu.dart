import 'package:flutter/material.dart';
import 'package:webviewDemo/Screens/Signup/signup_screen.dart';
import 'package:webviewDemo/Screens/app/clae.dart';

import 'package:webviewDemo/lamdum.dart';
import 'package:webviewDemo/doc.dart';
import 'package:webviewDemo/profile.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
  
  child: ListView(
    
    padding: EdgeInsets.zero,
    children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text('คลีนิคสัตว์ '), 
        accountEmail: Text('เมนู'),
        currentAccountPicture: CircleAvatar(
           child: Image.asset(
                      "assets/images/1113.png",
                      height: 100.9,
          ),
          backgroundColor: Colors.white,
        ),
        ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('หน้าแรก'),
        onTap: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => Clae()),
          );
         
        },
      ),
      ListTile(
        leading: Icon(Icons.account_box),
        title: Text('ข้อมูลส่วนตัว'),
        onTap: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => MyProfile()),
          );
        },
      ),
        ListTile(
        leading: Icon(Icons.history),
        title: Text('จองคิว'),
        onTap: () {
           Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => Lamdum()),
           );
        },
       ),
       ListTile(
        leading: Icon(Icons.group_add_sharp),
        title: Text('ปรึกษาหมอ'),
        onTap: () {
           Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => Doctor()),
           );
        },
       ),
       ListTile(
        leading: Icon(Icons.logout),
        title: Text('ออกจากระบบ'),
        onTap: () {
           Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => SignUpScreen()),
           );
        },
       ),
      ],
     ),
   );
  }
}