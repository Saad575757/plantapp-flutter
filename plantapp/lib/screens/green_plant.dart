import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plantapp/plants.dart';
 class GreenPlant extends StatelessWidget {
   const GreenPlant({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Container(

       padding: EdgeInsets.symmetric(horizontal: 25),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         
         children: [
           SizedBox( height: 35,),
           Text("Green", style: TextStyle(color: Colors.grey, fontSize: 17,)),
           SizedBox(height: 7,),
           Text("Plants", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
           SizedBox(height: 10,),
           Expanded(
             child: Container(
               child: ListView.builder(itemCount: plants.length,
                itemBuilder: (_ , index){
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(plants[index].image),
                        SizedBox(height: 10,),
                        Text(plants[index].title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text(plants[index].discription, style: TextStyle(color: Colors.grey, fontSize: 16),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text(plants[index].price, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),

                          ],
                        ),
                      ],

                    ),
                  );


                },
                 ),
             ),
             ),
         ],
       ),
       
     );
   }
 }