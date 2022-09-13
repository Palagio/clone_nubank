import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_projeto/app_bar.dart';
import 'package:primeiro_projeto/list_tile.dart';
import 'package:primeiro_projeto/list_tile_news.dart';

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
                color: const Color(0xFF9c44dc),
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
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ListTileWidget(
                      label: 'Area Pix',
                      icon: Icons.abc_rounded,
                    ),
                    ListTileWidget(
                      label: 'Pagar',
                      icon: CupertinoIcons.barcode,
                    ),
                    ListTileWidget(
                      label: 'Transferir',
                      icon: CupertinoIcons.money_dollar,
                    ),
                    ListTileWidget(
                      label: 'Depositar',
                      icon: Icons.abc_rounded,
                    ),
                    ListTileWidget(
                      label: "Recarga de\n\n" "celular\n\n",
                      icon: Icons.settings_cell,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFD3D3D3),
                ),
                child: Stack(
                  children: const [
                    Positioned(
                      left: 50,
                      top: 15,
                      child: Text(
                        'Meus cartoes',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      left: 10,
                      child: Icon(Icons.card_travel),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ListTileNews(
                      label: 'Voce na Copa do Mundo da Fifa. Acredita e vai.',
                      color: Colors.black,
                    ),
                    ListTileNews(
                      label:
                          'Seguro de vida a partir de R\$4/mes? Conheca o nubank vida!',
                      color: Colors.black,
                    ),
                    ListTileNews(
                      label:
                          'Salve um amigo da burocracia. Faca um convite para o Nubank',
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: const Color(0xFFD3D3D3),
              ),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  child: Stack(children: [
                    const Positioned(
                      top: 20,
                      left: 20,
                      child: Text(
                        'Cartao de Credito',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const Positioned(
                      top: 50,
                      left: 20,
                      child: Text(
                        'Fatura atual',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const Positioned(
                      top: 70,
                      left: 20,
                      child: Text(
                        'R\$ 250,00',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 100,
                      left: 20,
                      child: Text(
                        'Limite disponivel de R\$ 10,00',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const Positioned(
                      left: 380,
                      top: 20,
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                      ),
                    ),
                    Positioned(
                      top: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 15, bottom: 10),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              shape: MaterialStateProperty.all(
                                  const StadiumBorder()),
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFDCDCDC),
                              )),
                          child: const Text(
                            'Parcelar compras',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: const Color(0xFFD3D3D3),
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
