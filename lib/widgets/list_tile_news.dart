import 'package:flutter/widgets.dart';

class ListTileNews extends StatelessWidget {
  final String label;
  final String? label2;
  final Color? color;
  final Color? color2;

  const ListTileNews({
    Key? key,
    required this.label,
    this.color,
    this.label2,
    this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFDCDCDC),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: label,
                style: TextStyle(color: color),
              ),
              TextSpan(
                text: label2,
                style: TextStyle(color: color2),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
