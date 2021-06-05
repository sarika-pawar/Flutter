import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                    image: new AssetImage("images/new-flutter.png"),
                    fit: BoxFit.fill,
                  ))),
              Text('this is Contact Page '),
              Text('You can contact here '),
            ],
          ),
        ));
  }
}
