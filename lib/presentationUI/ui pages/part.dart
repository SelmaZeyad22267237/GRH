import 'package:flutter/material.dart';
import 'package:flutter_application_3/api/part.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter_application_3/presentationUI/ui%20pages/cliping_path.dart';
import 'package:flutter_application_3/presentationUI/ui%20pages/maind.page.dart';
import 'package:get/get.dart';
import '../../models/Part.dart';

class Partt extends StatefulWidget{
  int pk;
   Partt({required this.pk,super.key});
  
  

  @override
  State<Partt> createState() => _ParttState();
}

class _ParttState extends State<Partt> {
  int currentIndex = 0;
   bool isLoading = true;
  List<Part> Parts = [];

  _loadData(int pk) async {
    PartController.fetchPart(pk).then((Partd) {
      
       
      setState(() {
        Parts = Partd;
        isLoading = false;
      });
    });
  }
  
@override
     void initState() {
    _loadData(widget.pk);

    super.initState();
  }
 @override
  Widget build(BuildContext context) {
    
   Size size = MediaQuery.of(context).size;
   

    return   Scaffold(
 //   floatingActionButton:widget.index==1? FloatingActionButton(onPressed:(){appbarDialoge(context);},
    
          //             child: Icon(Icons.person_add), backgroundColor: Colors.teal,):Text(''),
       
       drawer:  Maindrawer(),
        body:CustomScrollView(slivers: [SliverAppBar(backgroundColor: Colors.transparent,flexibleSpace: MyClippingPath(),expandedHeight: 150,),SliverToBoxAdapter(child:    SingleChildScrollView(
        child: SizedBox(
          width: Get.size.width,

         
            
                
                  child: 
                    
                    
                    
                     
                    
                     
                     ListView.builder(
                         shrinkWrap:true,
                           controller: ScrollController(),
                      itemBuilder: (context, index) {
        
                             return  
                              
                                 Column(
                                   children: [
                                     Card(
                                      color: Colors.white,
                                      elevation:2,
                                        child: ExpansionTile(
                                        
                                           iconColor: Colors.green,
                                           collapsedIconColor: Colors.green,
                                           childrenPadding: 
                                           EdgeInsets.all(8),
                                          expandedAlignment: Alignment.topLeft,        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                                          textColor: Colors.black,
                                          leading:  
                                          IconButton(icon:Icon(Icons.people,color: Colors.green,size: 30,), onPressed: () {  },),
                                          
                                            
                           trailing: SizedBox(
                            width: Get.size.width*0.2,
                             child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (context, index1) => Icon(Icons.star,color:Colors.amberAccent),itemCount: Parts[index].scor_Final,),
                           ),  
                  title:Text('Nom: ${Parts[index].nom}',style: TextStyle(
                  color:Colors.black,
                  fontSize: 15,),),
                  
                  subtitle: Text('Email: ${Parts[index].email}',style: TextStyle(
                  color:Colors.black,
                  fontSize: 15,),),
                   
                   children: [
                              Text('                    tel: ${Parts[index].nbreTel}',style: TextStyle(
                  color:Colors.black,
                  fontSize: 15,),),            
                                       
                                      Text('                    Exprience: ${Parts[index].exprenceC}',style: TextStyle(
                   color:Colors.black,
                   fontSize: 15,),
                   textAlign: TextAlign.center,
                  
                  
                  ),  
                                      Text('                   diplome: ${Parts[index].diplome}',style: TextStyle(
                   color:Colors.black,
                   fontSize: 15,),
                   textAlign: TextAlign.center,
                  
                  
                  ),
                    Text('                   comptence : ${Parts[index].comptence}',style: TextStyle(
                   color:Colors.black,
                   fontSize: 15,),
                   textAlign: TextAlign.center,
                  
                  
                  ),
                   
                  
                  
                      
                        
                    
                                        ],
                                        
                                       )  ),
                                   ],
                                 );
            },
            itemCount: Parts.length,
                     
                   
             
                    
                    ),
                 
                ),
        )),
            
       
      ],
        ));

  }
} 
    
      
      
     

      
    
 