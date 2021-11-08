import 'package:disenos_app/screens/home_page.dart';
import 'package:disenos_app/screens/scroll_design.dart';
import 'package:disenos_app/screens/transaccion_desing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'material app',
      initialRoute: 'transaccion_desing',
      routes: {
        'basic_design': (BuildContext context) => MyHomePage(),
        'scroll_screen': (BuildContext context) => ScrollScreen(),
        'transaccion_desing': (BuildContext context) => TransaccionDesing()
      },
    );
  }
}
