 import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:task_app/theme/colors.dart';
import 'package:task_app/views/Home/model/home_view_model.dart';
import 'package:task_app/views/Project/model/project_view_model.dart';
import 'package:task_app/views/Project/view/widgets/completed_screen.dart';
import 'package:task_app/views/Project/view/widgets/in_progress_screen.dart';
import 'package:task_app/views/Project/view/widgets/todo_screen.dart';

class ProjectView extends StatelessWidget {


     const ProjectView({Key? key,}) : super(key: key);
     @override
     Widget build(BuildContext context) {
      return ViewModelBuilder<ProjectViewModel>.reactive(
       viewModelBuilder: () => ProjectViewModel(),
       builder: (context, viewModel, child) {
        return  DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Colors.black,
              
              ),
              backgroundColor:ColorUtils.primaryColor,
              elevation: 0,
              centerTitle: true,
              title: const Text("Project",style: TextStyle(color: Colors.white),),
            
        
          
            ),
            body: Padding(padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                 TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.black,
                  indicatorColor: Colors.transparent,
                  
                  
                  tabs:  [
                   Tab(
                          child: Container(
                            width: 160,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: ColorUtils.primaryColor),
                            ),
                            child: Center(
                              child: Text(
                                "To-Do",
                                textAlign: TextAlign.center,
                               
                              ),
                            ),
                          ),
                        ),
                 Tab(
                          child: Container(
                            width: 160,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: ColorUtils.primaryColor),
                            ),
                            child: Center(
                              child: Text(
                                "In-Process",
                                textAlign: TextAlign.center,
                               
                              ),
                            ),
                          ),
                        ),
                   Tab(
                          child: Container(
                            width: 160,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: ColorUtils.greenColor),
                            ),
                            child: Center(
                              child: Text(
                                "Done",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorUtils.greenColor
                                
                                ),
                                
                               
                              ),
                            ),
                          ),
                        ),
                
                ]),
                Expanded(child: TabBarView(children: [
                  TodoScreen(),
                  InProgressScreen(),
                  CompletedScreen()
                ]))
              ],
            ),
            ),
          ),
        );
       });}}