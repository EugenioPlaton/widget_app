
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MenuItem{
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
});

}
const appMenuItem = <MenuItem> [
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined
  ),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card
  )
];
