import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_about_life/screens/home_screen.dart';
import 'package:flutter_about_life/screens/profile_screen.dart';
class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int selectedindex=0;
  List<Widget>view=[HomeScreen(),Container(),Container(),ProfileScreen()];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar:BottomAppBar(
        color: Theme.of(context).scaffoldBackgroundColor,

        notchMargin: 6,
        shape:const CircularNotchedRectangle(),

        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: buildicon(0,const Icon(CupertinoIcons.house_fill)),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: buildicon(1,const Icon(CupertinoIcons.chat_bubble_fill)),
            ),
            const  Opacity(opacity: 0,child: Icon(Icons.no_cell),),
            Padding(
              padding: const EdgeInsets.all(5),
              child: buildicon(2,const Icon(CupertinoIcons.bell_fill)),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: buildicon(3,const Icon(CupertinoIcons.person_fill)),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
        },
        child: Container(
          height: 60,
          width: 60,
          decoration:const  BoxDecoration(

            shape: BoxShape.circle, // circular shape
            gradient: LinearGradient(
              colors: [
                Color(0xffec5296),
                Color(0xffbb64d3)
              ],
            ),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: view[selectedindex],
    );
  }
  Widget buildicon(var index,icon) {
    return IconButton(onPressed: () {
      setState(() {
        selectedindex=index;
      });

    }, icon: icon,color: index==selectedindex?const Color(0xffed5483):Colors.white,);
  }

}
