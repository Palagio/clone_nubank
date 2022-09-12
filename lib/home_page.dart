import 'package:flutter/material.dart';
import 'package:primeiro_projeto/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: Colors.purple,
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 13,
                  ),
                  child: Text(
                    'Olá, João',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Stack(
                  children: const [
                    Positioned(
                      top: 10,
                      left: 15,
                      child: SizedBox(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Conta',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 45,
                      left: 15,
                      child: SizedBox(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'R\$ 100,00',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 380,
                      top: 20,
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(iconSize: 30, items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_vert_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_rounded),
            label: '',
          ),
        ]),
      ),
    );
  }
}
