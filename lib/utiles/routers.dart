import 'package:coffee_app/splash_screen/splash_screen.dart';
import 'package:coffee_app/utiles/staticVar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Routers {

  static Route<dynamic> generateRoute(RouteSettings? settings) {
    StaticVar.route = settings!.name!;

    switch (settings.name) {
      case SplashScreen.id:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }

  }
}