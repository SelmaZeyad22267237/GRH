import 'package:flutter/material.dart';
import 'package:flutter_application_3/presentationUI/ui%20pages/edit.page.dart';
import 'package:flutter_application_3/presentationUI/ui%20pages/langue.page%20.dart';
import 'package:get/get.dart';

import '../../presentationUI/signup/signup.dart';
 
class Maindrawer extends StatelessWidget{
  const Maindrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget> [
            DrawerHeader(
              decoration: BoxDecoration(
             
              ),
              child:Center(
               child:Image.asset('assets/RH.png')
              ),
            ),
           
          
           
            
            

           
           
           
           ListTile(
            title: Text('Deconnecte'),
            onTap: (){
              Get.offAll(HomePage());
            },

           ) , 
          ],
        ),
      );
      
       
    
  } 
}
      
    
    
  



