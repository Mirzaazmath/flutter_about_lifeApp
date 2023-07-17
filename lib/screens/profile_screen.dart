import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_about_life/utils/textutiles.dart';
import 'dart:convert';

import '../components/clipper_up.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  foregroundDecoration:  BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops:const  [0.3,0.6],
                      colors: [

                        Colors.transparent,
                        Theme.of(context).scaffoldBackgroundColor
                      ],


                    ),
                  ),
                  decoration:const  BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/bg.webp"),fit: BoxFit.fill
                      )
                  ),
                ),
                const Column(
                children: [
                   CircleAvatar (
                    radius: 60,
                    backgroundImage: AssetImage("assets/myprofile.png"),
                  ),
                    SizedBox(height: 10,),
                    TextUtils(text: "Dev_73arner",size: 20,isbold: true,),
                  SizedBox(height: 10,),
                    TextUtils(text: "Member for 2 years",color: Color(0xff6d6d6d),),
                ],
              )
              ],
            ),
            Padding(
              padding: const  EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                 const  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          TextUtils(text: "10k",size: 20,isbold: true,),
                          SizedBox(height: 5,),
                          TextUtils(text: "Followers",color: Color(0xff6d6d6d),),
                        ],
                      ),
                      Column(
                        children: [
                          TextUtils(text: "125",size: 20,isbold: true,),
                          SizedBox(height: 5,),
                          TextUtils(text: "Following",color: Color(0xff6d6d6d),),
                        ],
                      )

                    ],
                  ),
                const   SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     Container(
                       height: 40,
                       width: 120,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color:const  Color(0xff2b2b2b),
                       ),
                       alignment: Alignment.center,
                       child:const  TextUtils(text: "Here to Help",size: 12,isbold: true,),

                     ),
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:const  Color(0xfffa4d85),
                        ),
                        alignment: Alignment.center,
                        child: const TextUtils(text: "I Need Help",size: 12,isbold: true,),

                      ),

                    ],
                  ),
                const   SizedBox(height: 20,),
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color:const  Color(0xff4f4c55),),
                      gradient:const  LinearGradient(
                          colors:[
                            Color(0xff4f4c55),
                            Color(0xff252525),
                          ]
                      ),
                    ),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:const  Color(0xff2b2b2b),


                          ),
                          alignment: Alignment.center,
                          child:const Icon(Icons.emoji_events,color: Colors.white,),
                        ),
                        const TextUtils(text: "Achievements",isbold: true,),
                        Stack(
                          children:  [
                            Container(
                              width: 100,
                              height: 30,

                            ),
                             CircleAvatar(
                              radius: 17,
                              backgroundColor:const  Color(0xff393637),
                              child: Text( String.fromCharCodes( Runes('\u{1F601}'))),
                            ),
                             Positioned(
                              left: 20,
                              child: CircleAvatar(
                                radius: 17,
                                backgroundColor: const Color(0xff393637),
                                child: Text( String.fromCharCodes( Runes('\u{2764}'))),
                              ),
                            ),
                             Positioned(
                              left: 40,
                              child: CircleAvatar(
                                radius: 17,
                                backgroundColor:const  Color(0xff393637),
                                child: Text( String.fromCharCodes( Runes('\u{1F44D}'))),
                              ),
                            )
                          ],
                        )
                      ],

                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pinkAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.pinkAccent,
                            offset: Offset(1,1),
                            blurRadius: 5
                          )
                        ]
                      ),
                      child:const  Icon(Icons.description_outlined,color: Colors.white,),
                    ),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff322f2e),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.pinkAccent,
                                  offset: Offset(1,1),
                                  blurRadius: 5
                              )
                            ]
                        ),
                        child:const  Icon(Icons.edit_outlined,color: Colors.white,),

                      ),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff322f2e),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.pinkAccent,
                                  offset: Offset(1,1),
                                  blurRadius: 5
                              )
                            ]
                        ),
                        child:const  Icon(Icons.photo_camera_outlined,color: Colors.white,),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    height: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color:const  Color(0xff4f4c55),),
                      gradient:const  LinearGradient(
                          colors:[
                            Color(0xff4f4c55),
                            Color(0xff252525),
                          ]
                      ),
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [


                            ClipPath(
                              clipper: CardClipper(),
                              child: Container(
                                  width: double.infinity,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/gradient2.jpeg"),fit: BoxFit.fill),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),),
                                  padding:const  EdgeInsets.all(10),
                                  child:Column(

                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          height: 40,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white,),
                                              borderRadius: BorderRadius.circular(15)

                                          ),
                                          alignment: Alignment.center,
                                          child:const TextUtils(text: "Hopeless",)

                                      ),
                                      const   TextUtils(text: "I am having restless nights, it's hard",isbold: true,),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            height: 45,
                                            width: 160,
                                            decoration: BoxDecoration(
                                                color: Colors.black.withOpacity(0.4),

                                                borderRadius: BorderRadius.circular(15)
                                            ),
                                            padding:const  EdgeInsets.symmetric(horizontal: 10),
                                            alignment: Alignment.center,
                                            child: const Row(
                                              children: [
                                                Icon(CupertinoIcons.chat_bubble_fill,color: Colors.white,),
                                                SizedBox(width: 10,),
                                                TextUtils(text: "12 Comments",),
                                              ],
                                            )

                                        ),
                                      ),


                                    ],
                                  )
                                //Text( String.fromCharCodes( Runes('\u{1F601}'))),

                              ),
                            ),
                          ],
                        ),
                        const Positioned(
                          right: 20,
                          top: 20,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(CupertinoIcons.heart_fill,color: Colors.white,),
                              SizedBox(width: 10,),
                              TextUtils(text: "20",),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
