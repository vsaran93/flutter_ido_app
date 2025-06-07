import 'package:flutter/material.dart';
import 'package:flutter_ido_app/providers/service_providers_list_provider.dart';
import 'package:flutter_ido_app/screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ServiceProvidersListProvider(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iDo',
      home: LoginScreen(),
    );
  }
}

