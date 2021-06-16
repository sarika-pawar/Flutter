import 'package:flutter/material.dart';
import 'about_me.dart';
import 'home_screen.dart';
import 'featurs.dart';
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('LOGIN'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text('about'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMe()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.arrow_forward_ios),
              title: Text('Featurs'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Featurs()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.picture_as_pdf),
              title: Text('picutes'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyPictures()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text('home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.picture_in_picture_alt_rounded),
              title: Text('product'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Products()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.design_services_outlined),
              title: Text('services'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OurServices()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
