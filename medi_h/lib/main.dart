import 'package:flutter/material.dart';
import 'package:medi_h/screens/WelcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:medi_h/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform,);
  //initilization of Firebase app

  // other Firebase service initialization
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),

    );
  }
}
