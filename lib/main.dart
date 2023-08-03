import 'package:flutter/material.dart';
import 'package:flutter_exam/routes/app_routes.dart';
import 'package:flutter_exam/routes/route_name.dart';
import 'package:flutter_exam/screens/auth/pages/login.dart';
import 'package:flutter_exam/screens/auth/pages/sign%20up.dart';
import 'package:flutter_exam/screens/mainscreen/main_page.dart';
import 'package:flutter_exam/screens/splash/splash.dart';

import 'data/local_storage/storage_repository.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  StorageRepository.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteName.splash,
      onGenerateRoute: AppRoutes.generateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: SignUp(),
    );
  }
}

