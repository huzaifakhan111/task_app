  import 'package:flutter/material.dart';
import 'package:task_app/theme/colors.dart';

GestureDetector projectContainer(
  {
    required String title,
    required String description,
    required String date,
    VoidCallback? press
  }
) {
       return GestureDetector(
          onTap: press
          ,
         child: Container(
           height: 180,
           width: 250,
           padding: const EdgeInsets.all(15),
           decoration: BoxDecoration(
            color: ColorUtils.secondaryColor,
            borderRadius: BorderRadius.circular(10),
            
           ),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      color: ColorUtils.primaryColor,
                    ),
                    child: const Icon(Icons.person,color: Colors.white,),
                  
                  ),
                  const SizedBox(width: 10,),
                   Text(title,style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
               Text(description,style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),),
                   Text(date,
                  style:const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),)
                 
       
            ],
           ),
          ),
       );
     }
    