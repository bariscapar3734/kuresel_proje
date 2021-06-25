import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kureselproje_app/screens/login/pages/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

const PrimaryColor = const Color(0xFF151026);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Küresel Güç - 2021',
        theme: ThemeData(
          primaryColor: Color(0xffffffff),
        ),
        home: LoginPage());
  }
}
