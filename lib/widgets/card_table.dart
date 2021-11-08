import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //table: tipo de widgets que devuelve una serie de filas alineada una a otra
    return Table(
      children: const [
        //primer fila
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.pie_chart_outline_sharp,
            text: ('general'),
          ),
          _SingleCard(
            color: Colors.cyanAccent,
            icon: Icons.emoji_transportation,
            text: ('Transporte'),
          ),
        ]),

        //segunda fila
        TableRow(children: [
          _SingleCard(
            color: Colors.red,
            icon: Icons.health_and_safety_rounded,
            text: ('Salud'),
          ),
          _SingleCard(
            color: Colors.green,
            icon: Icons.school_outlined,
            text: ('Educacion'),
          ),
        ]),

        //tercera fila
        TableRow(children: [
          _SingleCard(
            color: Colors.deepOrange,
            icon: Icons.ios_share,
            text: ('Ios'),
          ),
          _SingleCard(
            color: Colors.indigoAccent,
            icon: Icons.android_outlined,
            text: ('Android'),
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon, size: 35),
            radius: 30,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            this.text,
            style: TextStyle(
                color: this.color, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
