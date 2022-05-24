import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("My AppBar",
                      style: TextStyle(
                        color: Colors.white12,
                        fontSize: 25.0,
                      )),
                  background: Image(
                    image: AssetImage('assets/images/01.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Music"),
                      new Tab(icon: new Icon(Icons.collections), text: "Gallery"),
                      new Tab(icon: new Icon(Icons.contact_phone), text: "Contact"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              Music(),
              Gallery(),
              Contact()
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
      color: Colors.white,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Jika - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Gantung - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Bimbang - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Every Summertime - NIKI"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Im Falling in Love - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Cinta Sejati - Bunga Citra Lestari"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Bahaya - Tiara Andini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Merasa Indah - Tiara Andini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Janji Kita - Mahalini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Love Story - Taylor Swift"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Aku Yang Salah - Mahalini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Blank Space - Taylor Swift"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Jealous - Labrinth"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Lowkey - NIKI"),
          ),
        ],
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  final List images = [
    "assets/images/01.jpg",
    "assets/images/02.jpg",
    "assets/images/03.jpg",
    "assets/images/04.jpg",
    "assets/images/05.jpg",
    "assets/images/06.jpg",
    "assets/images/07.jpg",
    "assets/images/08.jpg",
    "assets/images/09.jpg",
    "assets/images/10.jpg",
    "assets/images/11.jpg",
    "assets/images/12.jpg",
    "assets/images/13.jpg",
    "assets/images/14.jpg",
    "assets/images/15.jpg",
    "assets/images/16.jpg",
    "assets/images/17.jpg",
    "assets/images/18.jpg",
    "assets/images/19.jpg",
    "assets/images/20.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 30,
        itemBuilder: (context, index) {
          if (index > 0) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: Image.asset(images[index % 15]),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(images[index]),
            );
          }
        },
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Ana - 082334789210"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Angela - 08989786542"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Bella - 087678906452"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Dina - 081789045263"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Elang - 082367805312"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Gabriel - 081248906731"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Farell - 085678094327"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Dino - 085388110920"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Daviq - 085452519018"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Julia - 085325653787"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Rozikin - 085798765432"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Ananta - 081986432098"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Reynaldy - 082457890312"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Qinara - 087543218085"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Hisyam - 085032602134"),
          ),
        ],
      ),
    );
  }
}
