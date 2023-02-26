 import 'package:flutter/material.dart';
import 'package:task_app/theme/colors.dart';

Container taskContainer({
  required String title,
  required String date,
  required String status,
 
}) {
    return Container(
        height: 100,
     padding: const EdgeInsets.all(15),
       decoration: BoxDecoration(
          color:ColorUtils.primaryColor,
          borderRadius: BorderRadius.circular(10),
         
        
       ),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              
              ),),
               Text(status,style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              
              ),),
             
            ],
          ),
          

           const Text("Due Date",style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.bold,
           
           ),),
          
            Text(date,style: TextStyle(
             fontSize: 15,
             color: Colors.white,
             fontWeight: FontWeight.bold,
           
           ),),
        ],
       ),
      );
  }