import 'package:flutter/widgets.dart';

class ListTileNews extends StatelessWidget {
  final String label;
  final Color? color;

  const ListTileNews({
    Key? key,
    required this.label,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
      child: Container(
        width: 250,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFFDCDCDC),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              maxLines: 2,
              style: TextStyle(color: color),
            ),
          ),
        ),
      ),
    );
  }
}
