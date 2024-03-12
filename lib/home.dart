// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:text_fild_drawer13/costomTextField.dart';
import 'package:text_fild_drawer13/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldkey=GlobalKey();
  final TextEditingController emailController=TextEditingController();
  final TextEditingController paswordController=TextEditingController();
  final GlobalKey<FormState> _fromkey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      endDrawer: MyDrawer(),
      key: _scaffoldkey,
      appBar: AppBar(

        backgroundColor: Colors.green,
        leading: IconButton(onPressed: (){
          _scaffoldkey.currentState!.openDrawer();
        }, icon: Icon(Icons.menu)),
        actions: [
           IconButton(onPressed: (){
          _scaffoldkey.currentState!.openEndDrawer();
        }, icon: Icon(Icons.menu)),
        ],
        ),
        body: Container(margin: EdgeInsets.all(12),  
        
            child: Form(
              key:_fromkey ,
              child: Column(
                children: [
                      TextFormField(
                validator:(value){
                  if (value!.isEmpty){
                      return 'Password is Empty';
                  }
                      if (value.length < 6 ){
                        return 'Password is too Short';
                      }
                      if (value.length >10  ){
                        return 'Password is too Long';
                      }
                      else print("Something is wrong try again");
                      return null;
                  
                } ,
                       // keyboardType: TextInputType.number,
               obscureText: isObsecure,
               obscuringCharacter: "#",
            
            
              controller: paswordController,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 248, 234, 234),
                filled: true,
                hintText: "Enter Your Password",
                hintStyle: TextStyle(color: Colors.red),
                labelText:  "Enter Your Password",
                labelStyle: TextStyle(color: Color.fromARGB(255, 101, 156, 94)),
            
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Color.fromARGB(255, 241, 63, 51))
                ),
                focusedBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color:  Color.fromARGB(255, 97, 255, 92))
                ),
            
                prefixIcon: Icon(Icons.password_outlined,color: Colors.teal,),
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    isObsecure=!isObsecure;
                  });
                },icon:isObsecure==true? Icon(Icons.visibility):Icon(Icons.visibility_off)),
              ),
                      ),
                      
                     SizedBox(height: 10,),
                     
                      CustomTextField(controller: emailController,
                        hintntText: "Enter your Email",
                        lebelText: "Enter your Email",
                        keyboardType: TextInputType.phone,
                        prefixicon: Icons.email_outlined,
                        suffixicon: Icons.attach_email_outlined,
                        validator: (value){
                                          if(value.isEmpty){return "Email Field Required";}
                                          if(value.contains("@")){return "Invalid Email";}
                                         },
                      ),
                     SizedBox(height: 10,),


                      ElevatedButton(onPressed: (){
                        // print("This value is ${paswordController.text}");
                        if(_fromkey.currentState!.validate()){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyDrawer()));
                        }
            

                      }, child: Text("Submit"))
                    ],),
            ),),
    );
  }
  bool isObsecure= false;
}


myStyle(double size,Color color){
 
  return TextStyle(fontSize: size,color: color);
  
}