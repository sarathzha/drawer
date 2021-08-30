// @dart=2.9
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 350,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/A.png'),
          AssetImage('assets/images/b.png'),
          AssetImage('assets/images/c.png'),
          AssetImage('assets/images/d.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 2.0,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 20.0,
      ),
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('TealOrca'),
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Colors.indigo,
                  Colors.black,
                ])),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                color: Colors.white,
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.favorite),
                color: Colors.white,
                onPressed: () {})
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Sarath Kumar R'),
                accountEmail: Text('sarath@tealorca.in'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/sarath.jpg'),
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.indigo,
                        Colors.black,
                      ]),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title:
                      Text('Home', style: TextStyle(color: Colors.indigo[900])),
                  leading: Icon(
                    Icons.home,
                    color: Colors.indigo[900],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Our Works',
                      style: TextStyle(color: Colors.indigo[900])),
                  leading: Icon(
                    Icons.work_outline_outlined,
                    color: Colors.indigo[900],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Our Services',
                      style: TextStyle(color: Colors.indigo[900])),
                  leading: Icon(
                    Icons.ad_units,
                    color: Colors.indigo[900],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Carrers',
                      style: TextStyle(color: Colors.indigo[900])),
                  leading: Icon(
                    Icons.auto_stories,
                    color: Colors.indigo[900],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About Us',
                      style: TextStyle(color: Colors.indigo[900])),
                  leading: Icon(
                    Icons.add,
                    color: Colors.indigo[900],
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings',
                      style: TextStyle(color: Colors.indigo[900])),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.indigo[900],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Log out',
                      style: TextStyle(color: Colors.indigo[900])),
                  leading: Icon(
                    Icons.logout,
                    color: Colors.indigo[900],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[image_carousel],
        ),
      ),
    );
  }
}
