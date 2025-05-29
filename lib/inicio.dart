import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'), // Asegúrate de tener esta imagen en tu carpeta assets
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'ContaPizza',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontFamily: 'OrderPizza-97J2', // Usa el nombre de la familia de fuentes que especificaste en pubspec.yaml
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Color de fondo del botón
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                child: Text(
                  'INICIAR SESIÓN',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/registro');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Color de fondo del botón
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                child: Text(
                  'REGISTRARSE',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
