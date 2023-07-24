

import 'package:coffee_app/splash_screen/splash_screen.dart';
import 'package:coffee_app/utiles/getIt.dart';
import 'package:coffee_app/utiles/navigation_services.dart';
import 'package:flutter/cupertino.dart';

class StaticVar {

  static String route=SplashScreen.id;
  static List<String> languageList=["ar","en"];
  static String phone='';
  static String userId='';
  static int version = 61;
  static String sid="123";
  static String tokenFirebase="";
  static String? language;
  static int typeTopUp=-1;
  static String? zoneId="";
  static String? accountId="";
  static String? serverId="";
  static String? deviceId="";
  static String? adjustToken="onosy607670g";
  static String? pathPdfFileNotification="";
  static String countryCode="";
  static List<String>? parentList=List.empty(growable: true);
  static Map<String,dynamic>? langEn={},langAr={} ;
  static BuildContext context=getIt<NavigationService>().navigatorKey.currentContext!;

  static String sendAsGiftPhoneFriend="";
  static String sendAsGiftNameFriend="";
  static bool sendAsGiftCards=false;

  static String sendAsGiftOrderId="";
  static String rasseedSite="rasseed.com";


}
