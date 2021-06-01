import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/featurs.dart';
import 'my_pictures.dart';
import 'login_page.dart';
import 'our_services.dart';
import 'about_me.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.star_border),
              title: Text(
                'this is my first list item',
                // textScaleFactor: 1.5,
                style: TextStyle(color: Colors.deepPurple, fontSize: 20),
              ),
              subtitle: Text('#123'),
              selected: true,
              trailing: const Icon(Icons.menu),
              tileColor: Colors.green[100],
              selectedTileColor: Colors.amber[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
            ),
            ListTile(
                leading: const Icon(Icons.star_border),
                title: Text(
                  'this is my second list item',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.deepPurple,
                  ),
                ),
                subtitle: Text('#pqr'),
                selected: false,
                trailing: const Icon(Icons.menu),
                tileColor: Colors.green[100],
                selectedTileColor: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                )),
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
                  MaterialPageRoute(builder: (context) => OurServices()),
                );
              },
              icon: Icon(Icons.design_services_outlined),
              label: Text('service'),
            ),
          ],
        ),
      ),
    );
  }
}
