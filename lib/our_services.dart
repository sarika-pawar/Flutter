import 'package:flutter/material.dart';
import 'package:flutter_example/about_me.dart';
import 'package:flutter_example/home_screen.dart';
import 'package:flutter_example/featurs.dart';
import 'my_pictures.dart';
import 'login_page.dart';
import 'products.dart';

class OurServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Our Sercices'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('This is Our Services page'),
              Text('*Free home delivery'),
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
                    MaterialPageRoute(builder: (context) => MyPictures()),
                  );
                },
                icon: Icon(Icons.picture_in_picture_sharp),
                label: Text('pictures'),
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
                    MaterialPageRoute(builder: (context) => Products()),
                  );
                },
                icon: Icon(Icons.picture_in_picture_alt_rounded),
                label: Text('product'),
              ),
            ],
          ),
        ));
  }
}
