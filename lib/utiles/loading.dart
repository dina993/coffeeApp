
import 'package:coffee_app/utiles/colorManger.dart';
import 'package:coffee_app/utiles/staticVar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loader {
  static showUnDismissibleLoader() => (showDialog(
    context: StaticVar.context,
    builder: (context) => SpinKitFadingCircle(
      itemBuilder: (BuildContext mcContext, int index) {
        return const DecoratedBox(decoration: BoxDecoration(color:ColorManager.colorProject, shape: BoxShape.circle));
      },
    ),
    barrierDismissible: false,
  ));
  static hideDialog() => Navigator.pop(StaticVar.context);
}
