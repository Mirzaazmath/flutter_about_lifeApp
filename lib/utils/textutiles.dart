import 'package:flutter/material.dart';
class TextUtils extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final bool? isbold;
  const TextUtils({super.key,required this.text, this.color,this.size,this.isbold});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: color??Colors.white,fontSize: size??15,fontWeight: isbold==null?FontWeight.normal:FontWeight.w700),);
  }
}

