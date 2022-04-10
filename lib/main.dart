import 'package:flutter/material.dart';
import 'drawer.dart';
import 'routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Account"),
          ),
          drawer: DrawerWidget(),
          body: TabBarView(children: <Widget>[
            Home(),
          ]),
        ),
      );
}
