import 'package:flutter/material.dart';
import 'drawer.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/profile':
        return MaterialPageRoute(builder: (_) => Profile());
      case '/portofolio':
        return MaterialPageRoute(builder: (_) => Portofolio());
      case '/contact':
        return MaterialPageRoute(builder: (_) => Contact());
      case '/description':
        return MaterialPageRoute(builder: (_) => Description());
      case '/seting':
        return MaterialPageRoute(builder: (_) => Setting());
      case '/gallery':
        return MaterialPageRoute(builder: (_) => Gallery());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Blank")),
        body: Center(child: Text('Blank page')),
      );
    });
  }
}
