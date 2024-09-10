import 'package:bazzar/providers/provider.dart';
import 'package:bazzar/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Providermodel();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Signup(),
      ),
    );
  }
}
