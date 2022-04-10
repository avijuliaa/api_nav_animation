import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: (Icons.account_circle_outlined),
              text: 'Profile',
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              }),
          _drawerItem(
              icon: (Icons.account_box_outlined),
              text: 'Portofolio',
              onTap: () {
                Navigator.pushNamed(context, '/portofolio');
              }),
          _drawerItem(
              icon: (Icons.mail_outlined),
              text: 'Contact',
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              }),
          Divider(height: 20.0, thickness: 3),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
          ),
          _drawerItem(
              icon: Icons.wysiwyg,
              text: "Description",
              onTap: () {
                Navigator.pushNamed(context, '/description');
              }),
          _drawerItem(
              icon: Icons.app_settings_alt_outlined,
              text: "Setting",
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              }),
          _drawerItem(
              icon: Icons.image_outlined,
              text: "Gallery",
              onTap: () {
                Navigator.pushNamed(context, '/gallery');
              }),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE57373),
      body: Align(
        child: Text('Nungguin Ya???'),
        alignment: Alignment.center,
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ClipOval(
            child: Image.asset('assets/images/piw.jpeg'),
          ),
          Text(
            'Nama :Avi Julia Rahma',
            style: TextStyle(fontWeight: FontWeight.bold, height: 2, fontSize: 20),
          ),
          Text(
            'Kelas : 2A',
            style: TextStyle(fontWeight: FontWeight.bold, height: 2, fontSize: 20),
          ),
          Text(
            'NIM  : 362055401011',
            style: TextStyle(fontWeight: FontWeight.bold, height: 2, fontSize: 20),
          ),
          Text(
            'Prodi : D3 Teknik Informatika',
            style: TextStyle(fontWeight: FontWeight.bold, height: 2, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portofolio'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/aaa.jpeg'),
            margin: EdgeInsets.all(10),
          ),
          Container(
            child: Image.asset('assets/images/bbb.jpeg'),
            margin: EdgeInsets.all(10),
          ),
          Container(
            child: Image.asset('assets/images/ccc.jpeg'),
            margin: EdgeInsets.all(10),
          ),
          Container(
            child: Image.asset('assets/images/ddd.jpeg'),
            margin: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Name : Avi Julia Rahma',
            style: TextStyle(fontWeight: FontWeight.bold, height: 2),
          ),
          Text(
            'Email : avijuliaa@gmail.com',
            style: TextStyle(fontWeight: FontWeight.bold, height: 2),
          ),
          Text(
            'Phone : 085647579708',
            style: TextStyle(fontWeight: FontWeight.bold, height: 2),
          ),
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
      ),
      body: Align(
        child: Text('Description not filled in'),
        alignment: Alignment.center,
      ),
    );
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Column(
        children: <Widget>[
          Text('Information Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
        ],
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/kantor.gif'),
            margin: EdgeInsets.all(10),
          ),
          Text(
            'Animation 1',
            style: TextStyle(fontWeight: FontWeight.bold, height: 2),
            textAlign: TextAlign.center,
          ),
          Container(
            child: Image.asset('assets/images/kantor.gif'),
            margin: EdgeInsets.all(10),
          ),
          Text(
            'Animation 2',
            style: TextStyle(fontWeight: FontWeight.bold, height: 2),
            textAlign: TextAlign.center,
          ),
          Container(
            child: Image.asset('assets/images/kantor.gif'),
            margin: EdgeInsets.all(10),
          ),
          Text(
            'Animation 3',
            style: TextStyle(fontWeight: FontWeight.bold, height: 2),
            textAlign: TextAlign.center,
          ),
          Container(
            child: Image.asset('assets/images/kantor.gif'),
            margin: EdgeInsets.all(10),
          ),
          Text(
            'Animation 4',
            style: TextStyle(fontWeight: FontWeight.bold, height: 2),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/api.jpeg'), fit: BoxFit.cover),
    ),
    accountName: Text('Avi Julia Rahma'),
    accountEmail: Text('avirahmaa@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
