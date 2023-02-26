import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:task_app/app/app.locator.dart';
import 'package:task_app/app/app.router.dart';
import 'package:task_app/theme/colors.dart';
import 'package:task_app/views/Home/view/home_view.dart';

  Future main() async {
     WidgetsFlutterBinding.ensureInitialized();
     await setupLocator();
     runApp(const MyApp());
    }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:ColorUtils.scaffoldBackgroundColor
      ),
       navigatorKey: StackedService.navigatorKey,
  // home: AddCardView(), // Used when testing a view
  
  onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
