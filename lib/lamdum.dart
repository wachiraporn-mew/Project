import 'package:flutter/material.dart';
import 'package:webviewDemo/Screens/Welcome/welcome_screen.dart';
import 'package:webviewDemo/constants.dart';
import 'package:webviewDemo/drawer_menu.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/foundation.dart';


class Lamdum extends StatelessWidget {
  Lamdum({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'การจองคิว';

    var i = 21;
        return MaterialApp(
          title: title,
          home: Scaffold(
            // No appbar provided to the Scaffold, only a body with a
            // CustomScrollView.
            body: CustomScrollView(
              slivers: <Widget>[
                // Add the app bar to the CustomScrollView.
                SliverAppBar(
                  // Provide a standard title.
                  title: Text(title),
                  
                  // Allows the user to reveal the app bar if they begin scrolling
                  // back up the list of items.
                  floating: true,
                  // Display a placeholder widget to visualize the shrinking size.
                  flexibleSpace: Placeholder(),
                  // Make the initial height of the SliverAppBar larger than normal.
                  expandedHeight: 70,
                ),
                // Next, create a SliverList
                SliverList(
                  // Use a delegate to build items as they're scrolled on screen.
                  delegate: SliverChildBuilderDelegate(
                    // The builder function returns a ListTile with a title that
                    // displays the index of the current item.
                    (context, index) => ListTile(title: Text('ลำดับ$index')),
                    
                    // Builds 1000 ListTiles
                    childCount: i-1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}