


import 'package:coffee_app/utiles/colorManger.dart';
import 'package:coffee_app/utiles/staticVar.dart';
import 'package:coffee_app/widget/custome_text.dart';
import 'package:flutter/material.dart';


class Buttons{

  Widget signWithGoogle() {
    return  Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 28, end: 30,top: 17 ),
      child:Container(
        width: MediaQuery
            .of(StaticVar.context)
            .size
            .width,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(10) ,
          color: ColorManager.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xffc6bdbd).withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 13,
              offset: const Offset(2, 0), // changes position of shadow
            ),
          ],
        ),
        child:

            GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 54,
                    padding: const EdgeInsetsDirectional.only(start: 60,top: 15,bottom: 16,end: 43),
                    decoration: const BoxDecoration(
                        color: ColorManager.white,
                        borderRadius: BorderRadius.all(Radius.circular(14))
                    ),
                    child:
                        Row(
                          children: [
                            Image.asset('assets/google.png',width: 24,height: 24,),
                            const SizedBox(width: 10,),
                            CustomTextWidget(
                              title: "Continue with Google",
                              size: 20,
                              color: ColorManager.black.withOpacity(0.54),
                              fontFamily: 'ExpoArabic-SemiBold',
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                            ),
                          ],
                        ),

                  )
              ),
            ),
    );

  }

}