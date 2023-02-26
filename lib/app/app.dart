 import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:task_app/views/Home/view/home_view.dart';
import 'package:task_app/views/Login/login_view.dart';
import 'package:task_app/views/Project/view/project_view.dart';
import 'package:task_app/views/Register/register_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: RegisterView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: ProjectView),
    
  ],

  dependencies: [
    LazySingleton(
      classType: NavigationService, )
  ]
  )
    class AppSetup {
     
    }