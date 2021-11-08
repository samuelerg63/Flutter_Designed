import 'package:disenos_app/widgets/background.dart';
import 'package:disenos_app/widgets/card_table.dart';
import 'package:disenos_app/widgets/custom_bottom_navigator.dart';
import 'package:disenos_app/widgets/page_titles.dart';
import 'package:flutter/material.dart';

class TransaccionDesing extends StatelessWidget {
  const TransaccionDesing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          Background(),
          //home body
          _HomeBody(),
        ],
      ),
      // menu inferior
      bottomNavigationBar: CustomNavigator(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //titulos
          PageTitle(),
          //Card Table
          CardTable(),
        ],
      ),
    );
  }
}
