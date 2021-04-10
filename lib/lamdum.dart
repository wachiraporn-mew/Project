import 'package:flutter/material.dart';
import 'package:webviewDemo/Screens/app/clae.dart';
import 'Screens/app/ku.dart';
import 'drawer_menu.dart';



class Lamdum extends StatelessWidget {
  Lamdum({Key key}) : super(key: key);

  get contentStyle => null;
 @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'จองคิวหมอ ',
          style: contentStyle,
        ),
        automaticallyImplyLeading: true,
      ),
      drawer: DrawerMenu(),
      
        floatingActionButton: FloatingActionButton(
          onPressed: ()=>{
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>  Clae())),
              
         
        },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
      );
  }
}
