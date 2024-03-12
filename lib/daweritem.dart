import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Draweritem extends StatelessWidget {
  Draweritem({
    super.key,this.title,this.icons,this.ontap,this.clr
  });
  Color? clr;
  String? title;
  IconData? icons;
  Function? ontap;
 // VoidCallback?ontap;


  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      color:clr??Colors.red,
      padding: EdgeInsets.only(bottom: 10),
      onPressed:()=> ontap,
      child: Row(children: [
        Icon(icons,size:26),
        SizedBox(width: 20,),
        Text("${title??"Null Data"}",style: TextStyle(fontSize: 22),)
      ],),
    );
  }
}