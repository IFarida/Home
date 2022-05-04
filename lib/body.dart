// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Выберите раздел',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(
          height: 20,
        ),
        ProfileMenu(
          text: 'Дом',
          icon: 'assets/icons/houses.png',
          press: () {},
        ),
        ProfileMenu(
          text: 'Мероприятия',
          icon: 'assets/icons/events.png',
          press: () {},
        ),
        ProfileMenu(
          text: 'Пространства',
          icon: 'assets/icons/map.png',
          press: () {},
        ),
        ProfileMenu(
          text: 'Организации',
          icon: 'assets/icons/organizations.png',
          press: () {},
        ),
        ProfileMenu(
          text: 'Карта локации',
          icon: 'assets/icons/locations.png',
          press: () {},
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: FlatButton(
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: const Color(0xFFF5F6F9),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 30,
            ),
            const SizedBox(width: 25),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
