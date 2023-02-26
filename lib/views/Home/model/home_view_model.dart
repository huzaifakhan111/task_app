import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:task_app/app/app.locator.dart';
import 'package:task_app/app/app.router.dart';
import 'package:task_app/views/Project/view/project_view.dart';

class HomeViewModel extends BaseViewModel{


  NavigationService navigationService = locator<NavigationService>();



  void navigateToProjectView(){
    navigationService.navigateTo(
     Routes.projectView,
      
    );
    
  }
}