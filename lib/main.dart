import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:unitransit_app_1/pages/page_authentification.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const UniTransitApp());
}

class UniTransitApp extends StatelessWidget{
  const UniTransitApp({super.key});

  @override
  Widget build(BuildContext context){
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:Authentification(),
    );
  }
}