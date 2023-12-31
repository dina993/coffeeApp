import 'package:flutter/material.dart';

class NavigationService {
  GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>(debugLabel: '_globalKey');
  GlobalKey<NavigatorState> navigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: '_homeScreenKey');


  Future<dynamic> navigateTo(String routeName, {  Object? args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  Future<dynamic> navigateToAndRemove( String routeName,{  Object? args}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
        routeName,
            (_) => false,arguments: args
    );
  }
  Future<dynamic> navigateReplacement(String routeName, { Object? args}) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName,arguments: args);
  }

}
