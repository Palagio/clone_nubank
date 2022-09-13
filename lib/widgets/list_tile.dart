import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final IconData icon;
  const ListTileWidget(
      {Key? key, this.onPressed, required this.label, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: onPressed,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: const Color(0xFFD3D3D3),
                  ),
                  child: Icon(icon),
                ),
              ),
            ),
            Expanded(
              child: Text(
                label,
                maxLines: 3,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
