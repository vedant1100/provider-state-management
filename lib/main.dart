import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/list_provider.dart';
import 'home.dart';
// import 'horizontal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context)=>NumberListProvider())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.blue)),
        home: const MyHomePage(),
      ),
    );
  }
}

