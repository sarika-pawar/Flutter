import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/featurs.dart';
import 'my_pictures.dart';
import 'login_page.dart';
import 'our_services.dart';
import 'products.dart';
import 'my_contact.dart';
import 'menu_page.dart';
import 'notes_page.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About me'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'thiis is about_me page',
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
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: "contact",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "menu",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notes),
              label: "note",
            ),
          ],
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;

              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              }
              if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                );
              }
              if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotesPage()),
                );
              }
            });
          },
        ));
  }
}
