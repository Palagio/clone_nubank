import 'package:flutter/material.dart';
import 'package:primeiro_projeto/widgets/money_page_tile.dart';

class MoneyPage extends StatelessWidget {
  const MoneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Positioned(top: 30, child: const Text('Acompanhe seu dinheiro')),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView(
            children: const [
              MoneyPageTile(
                  icon: Icons.currency_pound_outlined,
                  text: 'Caixinhas',
                  name: 'Conhecer'),
              MoneyPageTile(
                  icon: Icons.currency_pound_outlined,
                  text: 'Investimentos',
                  name: 'Conhecer'),
              MoneyPageTile(
                  icon: Icons.currency_pound_outlined,
                  text: 'Crypto',
                  name: 'Conhecer'),
            ],
          ),
        )
      ],
    ));
  }
}
