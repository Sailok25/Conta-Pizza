import 'package:conta_pizza/estado_turno.dart';
import 'package:flutter/material.dart';
import 'inicio.dart';
import 'login.dart';
import 'registro.dart';
import 'home.dart';
import 'historial.dart';
import 'ayuda.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ContaPizza',
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
        '/estado_turno': (context) => EstadoTurno(),
        '/ayuda': (context) => Ayuda(), // Asumiendo que 'EstadoTurno' es la pantalla de ayuda
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => Inicio());
      },
    );
  }
}