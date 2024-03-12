
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
CustomTextField({this.controller,this.hintntText,this.lebelText,this.prefixicon,this.suffixicon,  this.validator,this.keyboardType});
TextEditingController? controller;
String? hintntText,lebelText;
IconData? prefixicon,suffixicon;
dynamic validator;
TextInputType? keyboardType;

 @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:keyboardType ,
      validator:validator,
  controller: controller,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 248, 234, 234),
                filled: true,
                hintText: "$hintntText",
                hintStyle: TextStyle(color: Colors.red),
                labelText:  "$lebelText",
                labelStyle: TextStyle(color: Color.fromARGB(255, 101, 156, 94)),
                
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Color.fromARGB(255, 241, 63, 51))
                ),
                focusedBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color:  Color.fromARGB(255, 97, 255, 92))
                ),
            
                prefixIcon: Icon(prefixicon,color: Colors.teal,),
                suffixIcon: Icon(suffixicon,color: Colors.teal,),
                 ),
    );
  }
}


