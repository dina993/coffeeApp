import 'package:coffee_app/utiles/colorManger.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/custome_text.dart';

class MainScreen extends StatefulWidget {
  static const String id='MainScreen';
  const MainScreen({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 30),
                child: Container(
                  height: MediaQuery.of(context).size.height * .45,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/coffeshop.jpg"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              CustomTextWidget(
                  title: "Get the best coffee in Algeria!",
                  size: 30,paddingStart: 15,paddingEnd: 15,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w400,
                  color: Colors.brown),
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                        padding:  const EdgeInsetsDirectional.only(start: 10,top: 15,bottom: 16,),
                        child: OutlinedButton(
                          // padding: EdgeInsets.fromLTRB(55, 15, 55, 15),
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: ColorManager.darkBrown),
                          ),
                          child: CustomTextWidget(
                            title: "Register",
                            color: ColorManager.darkBrown,
                          ),
                        ),
                      ),

                    Padding(
                      padding:  const EdgeInsetsDirectional.only(start: 10,top: 15,bottom: 16,end: 20),
                      child: OutlinedButton(
                        // padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: ColorManager.darkBrown),
                         ),
                        child: CustomTextWidget(
                          title:"Log In",color: ColorManager.darkBrown),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
             Padding(
               padding: const EdgeInsetsDirectional.only(start:30,top: 15,bottom: 15,end: 30),
               child: Container(
                    height: 54,
                    decoration:  BoxDecoration(
                        color: ColorManager.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                    boxShadow: [
                     BoxShadow(
    color: const Color(0xffc6bdbd).withOpacity(0.7),
    spreadRadius: 1,
    blurRadius: 16,
    offset: const Offset(2, 0), // changes position of shadow
    ),
                       ],
                    ),
                 padding: const EdgeInsetsDirectional.only(start:60,),
                    child:
                    Row(children: [
                        const FaIcon(FontAwesomeIcons.facebookF,
                            size: 20, color: Color(0xFF4867AA)),   const SizedBox(width: 10,),
                        CustomTextWidget(
                          title:"Connect with Facebook",
                          size: 20,
                          color: Color(0xFF4867AA),
                          fontFamily: 'ExpoArabic-SemiBold',
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none,
                        ),
                      ],
                    ),

                  ),
             ),

            ]));
  }
}
