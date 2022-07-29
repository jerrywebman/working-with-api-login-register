import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'services/shared_service.dart';

//add the packages in the yaml file
//create the routes for the app
//step 1.. create the login, register and home routes
//step 2.. create the models files
//use the link to create the model files - https://www.dripcoding.com/json-to-dart/
//step 3.. create models folder for all the request and response
//step 4.. create the config file and add the api routes
//step 5.. create the services folder and the services files
//add the http package
//step 6.. create the the api services file and configure it
//step 7.. create the shared services file and configure it
//step 8.. integrate the api to the login and register pages

Widget _defaultHome = const LoginPage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Get result of the login function.
  // ignore: no_leading_underscores_for_local_identifiers
  bool _result = await SharedService.isLoggedIn();
  if (_result) {
    _defaultHome = const HomePage();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const LoginPage(),
      routes: {
        '/': (context) => _defaultHome,
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}
