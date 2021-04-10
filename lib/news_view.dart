
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsViewPage extends StatefulWidget {
  NewsViewPage({Key key, @required this.url}) : super(key: key);
  final String url;
  @override
  _NewsViewPageState createState() => _NewsViewPageState();
}

class _NewsViewPageState extends State<NewsViewPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('News View'),
      ),
      body: WebView(
        initialUrl: '${widget.url}',
      )
    );

  }
}