// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';
import 'package:text_fild_drawer13/daweritem.dart';
import 'package:text_fild_drawer13/home.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child:
     Column(children: [
      
      Expanded(flex: 3,
        child: Container(
            width: double.infinity,
          padding: EdgeInsets.only(top: 40,left: 20),
          
             decoration: BoxDecoration(color: const Color.fromARGB(255, 224, 236, 224),
              image: DecorationImage(
                image: NetworkImage("https://images.unsplash.com/photo-1587723958656-ee042cc565a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTB8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),fit: BoxFit.cover)),
       
      
        child: Column(
          mainAxisSize: MainAxisSize.max,
          
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         
     CircleAvatar(
      
      
      radius: 30,
      backgroundImage:NetworkImage("https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),)
       
       ,
       SizedBox(height: 12,),
       Text("Ana Skulj",style: myStyle(22, Color.fromARGB(255, 234, 248, 255)),),
         SizedBox(height: 8,),
       Row(
         children: [
           Text("2300 Followawrs",style: myStyle(16, Color.fromARGB(255, 234, 248, 255)),),
         
     
           Icon(Icons.person,color: const Color.fromARGB(255, 255, 255, 255),)
     
         ],
       ),
        ],),
      ),
      ),
      Expanded(flex: 7,
         
        child:Container(decoration: BoxDecoration(color: Color.fromRGBO(173, 248, 175, 1)),
          padding: EdgeInsets.all(16),
          width: double.infinity,
         
          child: Column(
            children: [
             
              Draweritem(icons: Icons.person,title: "Person",ontap: (){},clr: Colors.green,),
              Draweritem(icons: Icons.person,title: "Person",ontap: (){},clr: Colors.green,),
              Draweritem(icons: Icons.person,title: "Person",ontap: (){},clr: Colors.green,),
              Draweritem(icons: Icons.person,title: "Person",ontap: (){},clr: Colors.green,),
              Draweritem(icons: Icons.person,title: "Person",ontap: (){},clr: Colors.green,),
              Draweritem(icons: Icons.person,title: "Person",ontap: (){},clr: Colors.green,),
              Draweritem(icons: Icons.person,title: "Person",ontap: (){},clr: Colors.green,),
              Spacer(flex: 2, ),
              Divider(
                endIndent: 30,
                indent: 30,
                thickness: 6,
                height: 60,
              ),
              Draweritem(icons: Icons.person,title: "Person",ontap: (){},),
              Draweritem(icons: Icons.person,ontap: (){},clr: Colors.green,),
              Draweritem(icons: Icons.person,title: "Person",ontap: (){},),
             
          
             
            ],
          ),
        ),
      ),
     
       ],),);
  }
}



