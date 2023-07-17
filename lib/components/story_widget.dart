import 'package:flutter/material.dart';

import '../utils/textutiles.dart';
class StoryWidget extends StatelessWidget {
   StoryWidget({super.key});
  List<String>storylist=["assets/myprofile.png","assets/profile1.jpeg","assets/profile2.jpg","assets/profile3.jpg"];
  List<String>names=["you","Arina","Nina","Mark"];

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 90,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: storylist.length,
          itemBuilder: (context,index){
            return  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      margin:const  EdgeInsets.only(right: 30),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color:const  Color(0xffdc64b3),width: 2),
                      ),
                      padding:const  EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(

                              image: AssetImage(storylist[index],),fit: BoxFit.fill,
                            )
                        ),
                      ),
                    ),
                    index==0 ? Container(
                      margin:const  EdgeInsets.only(right: 30),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:const Color(0xffdc64b3).withOpacity(0.6)
                      ),

                      padding:const  EdgeInsets.all(5),
                      alignment: Alignment.center,

                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child:const  Icon(Icons.add,color: Color(0xffdc64b3)),

                      ),
                    ):Container()



                  ],
                ),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: TextUtils(text: names[index]),
                )
              ],
            );

          }),
    );
  }
}
