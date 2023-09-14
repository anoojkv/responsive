import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final Icon icon;
  final String name;
  const MenuCard({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon!,
        Container(margin: EdgeInsets.only(left: 5), child: Text(name))
      ],
    );
  }
}
