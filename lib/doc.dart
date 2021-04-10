import 'package:flutter/material.dart';
import 'package:webviewDemo/drawer_menu.dart';
class Doctor extends StatelessWidget {
  Doctor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTitle = 'ปรึกษาหมอ';
    return Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        drawer: DrawerMenu(),
        body: MyCustomForm(),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                      ...[
                        TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            filled: true,
                            hintText: 'กรุณากรอกคำปรึกษา...',
                            labelText: 'กรอกคำปรึกษาที่นี้',
                          ),
                          onChanged: (value) {
                           
                          },
                          maxLines: 5,
                        ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('ไม่มีฐานข้อมูล')));
              },
              child: Text('ตกลง'),
            ),
          ),
                      ],
        ],
      ),
      );
  }
}


