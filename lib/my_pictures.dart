import 'package:flutter/material.dart';
import 'package:flutter_example/about_me.dart';
import 'package:flutter_example/home_screen.dart';
import 'package:flutter_example/featurs.dart';
import 'login_page.dart';
import 'our_services.dart';

class MyPictures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Pictures'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('This is my Peactures Page'),
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                icon: Icon(Icons.home),
                label: Text('home'),
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutMe()),
                  );
                },
                icon: Icon(Icons.person),
                label: Text('about'),
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Featurs()),
                  );
                },
                icon: Icon(Icons.arrow_forward_ios),
                label: Text('featurs'),
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                icon: Icon(Icons.login_outlined),
                label: Text('login'),
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OurServices()),
                  );
                },
                icon: Icon(Icons.design_services_outlined),
                label: Text('service'),
              ),
            ],
          ),
        ));
  }
}
