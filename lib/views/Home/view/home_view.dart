import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:task_app/theme/colors.dart';
import 'package:task_app/views/Home/model/home_view_model.dart';
import 'package:task_app/views/Home/widgets/dialog.dart';
import 'package:task_app/views/Home/widgets/dialog_button_container.dart';
import 'package:task_app/views/Home/widgets/project_container.dart';
    class HomeView extends StatelessWidget {
     const HomeView({Key? key}) : super(key: key);
     @override
     Widget build(BuildContext context) {
      return ViewModelBuilder<HomeViewModel>.reactive(
       viewModelBuilder: () => HomeViewModel(),
       builder: (context, viewModel, child) {
        return  Scaffold(
          drawer: Drawer(

          ),
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black,
            
            ),
            backgroundColor:Colors.transparent,
            elevation: 0,
            actions: [

                Container(
                  margin: EdgeInsets.all(5),
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorUtils.primaryColor,
                    

                  ),
                  child: Icon(Icons.person,color: Colors.white,),
                )
            ],

        
          ),
       body: Padding(padding: const EdgeInsets.all(15),
       child: ListView.separated(
         
         
         itemCount: 3,
         separatorBuilder: (context, index) {
           return const SizedBox(height: 15,);
         
         },
         itemBuilder: (context,index) {
           return projectContainer(
             title: "Project ${
               index+1
             }",
             description: "This is a project",
             date: "12/12/2021",
             press: (){
            viewModel.navigateToProjectView(
              
            );
             }
           
           );
         }
       ),),
       floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (
          context
        ) {
          return dialog(context);
        
        } );
       },
       backgroundColor: ColorUtils.primaryColor,
       child: const Icon(Icons.add,color: Colors.white,))
         
        );
       },
      );
     }

  

    

    }