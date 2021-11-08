import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //seccion de la imagen
          Image(
            image: AssetImage('assets/fondo1.jpg'),
          ),

          //seccion del titulo con la estrella
          _Title(),

          //seccion de los iconos
          _ButtonSeccion(),

          //description
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                  'Sit aliqua fugiat nisi ex qui. Cupidatat enim ullamco officia laboris. Et occaecat enim magna cupidatat enim dolore cupidatat Lorem qui reprehenderit qui ea nostrud irure. Cillum cupidatat magna cupidatat nisi officia.')),
        ],
      ),
    );
  }
}

class _ButtonSeccion extends StatelessWidget {
  const _ButtonSeccion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment
            .spaceAround, //main se usa solo en row spaceAround espaciado entre los 3
        children: const [
          _CustomButtom(icon: Icons.call, text: 'Call'),
          _CustomButtom(icon: Icons.map, text: 'Route'),
          _CustomButtom(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class _CustomButtom extends StatelessWidget {
  final IconData icon;
  final String text;

  const _CustomButtom({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size: 35.0),
        const SizedBox(
          height: 10,
        ),
        Text(
          this.text,
          style:
              const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, //alinea al inicio, cross solo se usa para columnas
          children: const [
            Text(
              'texto de prueba ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'subtitulo de prueba 2',
              style: TextStyle(color: Colors.black45),
            ),
          ],
        ),

        Expanded(child: Container()),

        //dentro de una columna o un row se expande todo lo que pueda
        const Icon(Icons.star, color: Colors.red),
        const Text('41'),
      ]),
    );
  }
}
