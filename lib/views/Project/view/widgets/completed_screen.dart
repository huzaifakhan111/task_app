

import 'package:flutter/material.dart';
import 'package:task_app/theme/colors.dart';
import 'package:task_app/views/Home/widgets/dialog.dart';
import 'package:task_app/views/Project/view/widgets/add_task_dialog.dart';
import 'package:task_app/views/Project/view/widgets/task_container.dart';

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(height: 10,);
        
        },
        itemCount: 3,
        itemBuilder: (context,index){
        return taskContainer(
          title: "Task ${index +1}",
        
          date: "12/12/2021",
          status: "Completed"
         
        );
      }),
      
                 

    
    );
  }
}