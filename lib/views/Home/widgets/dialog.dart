   import 'package:flutter/material.dart';
import 'package:task_app/theme/colors.dart';
import 'package:task_app/views/Home/widgets/dialog_button_container.dart';

AlertDialog dialog(BuildContext context) {
       return AlertDialog(
          title: const Text("Add Project"),
          content: TextField(
            decoration: InputDecoration(
              
              border: 
              OutlineInputBorder(
               
                
                borderRadius: BorderRadius.circular(10)
              ),
              hintText: "Project Name"
            ),
          ),
          actions: [
            dialogButtonContainer(
              title: "Cancel",
              color: ColorUtils.redColor,
              press: (){
                Navigator.pop(context);
              }
            
            ),
            dialogButtonContainer(
              title: "Add",
              color: ColorUtils.greenColor,
            ),
          ],
        );
     }