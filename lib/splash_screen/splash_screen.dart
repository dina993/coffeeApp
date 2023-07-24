


import 'package:coffee_app/utiles/colorManger.dart';
import 'package:coffee_app/widget/button.dart';
import 'package:coffee_app/widget/custome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  static const String id = 'SplashScreen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
            decoration: const BoxDecoration(
                image:
                DecorationImage(image:(AssetImage('assets/splashScreen.png')))
            ),

            child:  Padding(
              padding: const EdgeInsets.only(top: 550.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomTextWidget(
                    title: "Coffee so good, your taste buds will love it.",
                    fontFamily: 'ExpoArabic-Regular',
                    size: 27.sp,
                    paddingStart: 24,
                    paddingEnd: 16,
                    textAlign: TextAlign.center,
                    color: ColorManager.white,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,

                  ),
                const SizedBox(height: 10,),
                CustomTextWidget(
                  title: "The best grain, the finest roast, the powerful flavor.",
                  size: 14.sp,
                  paddingStart: 31,
                  paddingEnd: 30,
                  paddingTop: 17,
                  textAlign: TextAlign.center,
                  color: ColorManager.white,
                  decoration: TextDecoration.none,
                  fontFamily: 'PublicSans-Light',
                  fontWeight: FontWeight.w400,

                ),
                  const SizedBox(height: 25,),
                  Buttons().signWithGoogle()

                ],
              ),
            ),
    )
      // This trailing comma makes auto-formatting nicer for build methods.
    ;
  }
}
