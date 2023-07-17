

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/clipper_up.dart';
import '../components/story_widget.dart';
import '../utils/textutiles.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                   const  TextUtils(text: "Hello Dev_73arner!",size: 20,isbold: true,),
                    const SizedBox(width: 10,),
                    Text( String.fromCharCodes( Runes('\u{1F970}')),style: const TextStyle(fontSize: 20),),
                  ],),
                const SizedBox(height: 10,),
                const  TextUtils(text: "What's bothering you?",color: Color(0xff6d6d6d),),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        image:const  DecorationImage(
                          image: AssetImage("assets/myprofile.png")
                        )
                      ),
                    ),
                   const  SizedBox(width: 20,),
                    Expanded(child:Container(
                     height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(52),
                        color:const  Color(0xff2b2b2b)
                      ),
                      alignment: Alignment.center,
                      child: const  TextUtils(text: "Share anything you want.",color: Color(0xff6d6d6d),size: 13,),
                      ),
                    ),
                  ],
                ),
                const  SizedBox(height: 20,),
                /// story view
                StoryWidget(),
                const  SizedBox(height: 20,),
                Container(
                  height: 60,
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
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:const  Color(0xffa170ef),
                         boxShadow:const  [
                           BoxShadow(
                             color: Color(0xffa170ef),
                             offset: Offset(1,1),
                             blurRadius: 5
                           )
                         ]

                        ),
                        alignment: Alignment.center,
                        child: const TextUtils(text: "Recent",),
                      ),
                      const TextUtils(text: "Friends",isbold: true,),
                      const TextUtils(text: "Newbies",isbold: true,),
                    ],

                  ),
                ),
              const   SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 280,
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
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                            child: Row(
                              children:  [
                              const   CircleAvatar(
                                  radius:26,
                                  backgroundImage: AssetImage("assets/profile3.jpg"),
                                ),
                               const  SizedBox(width: 10,),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      TextUtils(text: "Mark Kyle",isbold: true,),
                                      SizedBox(height: 4),
                                      TextUtils(text: "24 sec ago",color: Color(0xff6d6d6d),size: 12,)
                                    ],
                                  ),
                                ),
                                Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white54,),
                                        borderRadius: BorderRadius.circular(15)

                                    ),
                                    alignment: Alignment.center,
                                    child:const Icon(Icons.more_horiz,color: Colors.white,)

                                ),
                              ],
                            ),
                          ),
                        const   Spacer(),
                          ClipPath(
                            clipper: CardClipper(),
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              decoration: const BoxDecoration(
                               image: DecorationImage(image: AssetImage("assets/gradient1.webp"),fit: BoxFit.fill),
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
                                const   TextUtils(text: "I Have been trying things  but they  always went south why ?",isbold: true,),
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
                        top: 90,
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
            )
          ),
        ),
      ),
    );
  }
}

/*
* ClipPath(
            clipper: CardClipper(),
            child: Container(
              width: double.infinity,
              height: 200,
           decoration: const BoxDecoration(
             color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(10)),),
                child:Text( String.fromCharCodes( Runes('\u{1F601}'))),

            ),
          ),*/