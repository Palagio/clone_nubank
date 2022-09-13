import 'package:flutter/widgets.dart';

class MoneyPageTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final String name;
  const MoneyPageTile(
      {Key? key, required this.icon, required this.text, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFDCDCDC),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 50,
              child: Text(text),
            ),
            Positioned(
              top: 20,
              left: 10,
              child: Icon(icon),
            ),
            Positioned(
              top: 20,
              left: 340,
              child: Text(name),
            ),
          ],
        ),
      ),
    );
  }
}
