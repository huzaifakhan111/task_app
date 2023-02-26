import 'package:flutter/material.dart';
import 'package:task_app/theme/colors.dart';
import 'package:task_app/views/Home/widgets/dialog_button_container.dart';

AlertDialog AddTaskdialog(BuildContext context) {
       return AlertDialog(
          title: const Text("Add Task"),
          content: TextField(
            decoration: InputDecoration(
              
              border: 
              OutlineInputBorder(
               
                
                borderRadius: BorderRadius.circular(10)
              ),
              hintText: "Task Name"
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