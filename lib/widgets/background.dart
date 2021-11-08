import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.2, 0.8],
        colors: [Color(0xff2E30F5), Color(0xff202333)]),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //gradiente de colores
        Container(
          decoration: boxDecoration,
        ),
        Positioned(top: -100, left: -30, child: _PinkBox())
        //caja de colores
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 380,
        height: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 171, 1),
            ],
          ),
        ),
      ),
    );
  }
}
