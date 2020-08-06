import 'package:flutter/material.dart';
//import 'package:test_app/ui/home.dart';
//import 'package:test_app/ui/offline_audio.dart';
//import 'package:test_app/ui/online_audio.dart';
import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Myapp1());

      case '/offlineAudio':
        return MaterialPageRoute(builder: (_) => myOfflineAudio());

      case '/onlineAudio':
        return MaterialPageRoute(builder: (_) => myOnlineAudio());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error',
              textDirection: TextDirection.ltr, textAlign: TextAlign.center),
        ),
        body: Center(
          child: Text('Error',
              textDirection: TextDirection.ltr, textAlign: TextAlign.center),
        ),
      );
    });
  }
}
