import 'package:coffee_app/splash_screen/splash_screen.dart';
import 'package:coffee_app/utiles/colorManger.dart';
import 'package:coffee_app/utiles/getIt.dart';
import 'package:coffee_app/utiles/navigation_services.dart';
import 'package:coffee_app/utiles/routers.dart';
import 'package:coffee_app/utiles/staticVar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Coffee",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key, });


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //return LayoutBuilder
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            return ScreenUtilInit(
              designSize: const Size(414, 887),
              builder: (mContext, mWidget) => MaterialApp(
                builder: (context, widget) {
                  ScreenUtil.registerToBuild(context);
                  return MediaQuery(
                      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                      child: widget!);
                },

                themeMode: ThemeMode.light,
                darkTheme: ThemeData.light(),
                navigatorKey: getIt<NavigationService>().navigatorKey,
                initialRoute: SplashScreen.id,
                onGenerateRoute: Routers.generateRoute,

              ),
            );
          },
        );
      },
    );
  }
}
