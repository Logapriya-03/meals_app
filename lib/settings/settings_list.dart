import 'package:flutter/material.dart';
import 'package:meals_app/settings/styled_list.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: StyledText(title),
      subtitle: StyledText(
        subtitle,
        fontSize: 12,
        color: const Color.fromRGBO(109, 79, 80, 1),
      ),
      leading: Icon(
        icon,
        color: Colors.black,
        size: 30,
      ),
      onTap: () {},
    );
  }
}