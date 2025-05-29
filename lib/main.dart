import 'package:flutter/material.dart';
import 'inicio.dart';
import 'login.dart';
import 'registro.dart';
import 'home.dart';
import 'historial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Inicio(),
        '/login': (context) => Login(),
        '/registro': (context) => Registro(),
        '/pantalla_principal': (context) => PantallaPrincipal(),
        '/historial': (context) => Historial(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => Inicio());
      },
    );
  }
}