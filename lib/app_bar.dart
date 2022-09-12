import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {
  AppBarWidget({Key? key, double elevation = 0})
      : super(
            key: key,
            backgroundColor: const Color(0xFF9c44dc),
            elevation: elevation,
            leading: IconButton(
              iconSize: 30,
              onPressed: () {},
              icon: const Icon(Icons.account_circle_outlined),
              highlightColor: Colors.purpleAccent,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.help),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mail),
              ),
            ]);
}
