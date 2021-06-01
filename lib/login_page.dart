import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_me.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/featurs.dart';
import 'my_pictures.dart';
import 'our_services.dart';
import 'products.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('login Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  height: 70.0,
                  width: 200.0,
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                    image: new AssetImage("images/flutter-lockup-f.png"),
                    fit: BoxFit.fill,
                  ))),
              Container(
                margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    hintText: "Username",
                    suffixIcon: TextFormField(
                      initialValue: 'Username  ',
                      //maxLength: 25,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        //errorText: 'Enter Valid Username',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.error,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    hintText: "password",
                    suffixIcon: TextFormField(
                      initialValue: 'password  ',
                      //maxLength: 20,
                      decoration: InputDecoration(
                        labelText: 'password',
                        // errorText: 'use min 8 digit ',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.error,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
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
                    MaterialPageRoute(builder: (context) => OurServices()),
                  );
                },
                icon: Icon(Icons.design_services_outlined),
                label: Text('service'),
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
