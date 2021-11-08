import 'package:flutter/material.dart';

class CustomNavigator extends StatelessWidget {
  const CustomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false, //no muestra el texto del icono
        showUnselectedLabels:
            false, //no muestra el icono del icono NO seleccionado
        selectedItemColor: Colors.pink,
        unselectedItemColor: Color.fromRGBO(116, 117, 102, 1),
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        currentIndex: 0, //item seleccionado por defecto
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: 'Calendario'),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline_outlined), label: 'Grafica'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: 'Usuarios'),
        ]);
  }
}
