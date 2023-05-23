import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:prosper_user/Probiz/add_company.dart';
import 'package:prosper_user/practice.dart';
import 'Screens/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DIPC ProBiz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:   AddCompany(),
    );
  }
}
