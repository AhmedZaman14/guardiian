import 'package:flutter/material.dart';
import 'package:guardiian/constants/routes.dart';

import '../constants/colors.dart';

Widget drawer(BuildContext context) {
  return Drawer(
    elevation: 0,
    backgroundColor: Colors.white,
    width: MediaQuery.of(context).size.width * 0.8,
    shape: Border.all(style: BorderStyle.none),
    child: ListView(
      itemExtent: 40,
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 20),
      children: [
        ListTile(
          leading: const Icon(
            Icons.wallet,
            color: Colors.green,
          ),
          title: const Text(
            'Wallets Multi-coin Wallet',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.dark_mode,
          ),
          title: const Text('Dark Mode'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.security_outlined,
            color: Colors.blue,
          ),
          title: const Text('Security'),
          onTap: () {
            Navigator.pushNamed(context, routeSecurityPage);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.notifications,
            color: Colors.red,
          ),
          title: const Text('Push Notification'),
          onTap: () {
            Navigator.pushNamed(context, routePushNotificationsPage);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.check_box_outline_blank,
            color: Colors.brown,
          ),
          title: const Text('Node Settings'),
          onTap: () {
            Navigator.pushNamed(context, routeNodeSettingsPage);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.settings_accessibility,
            color: Colors.green,
          ),
          title: const Text('Preferences'),
          onTap: () {
            Navigator.pushNamed(context, routeCurrencyPreferencePage);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.money,
            color: Colors.deepOrange,
          ),
          title: const Text('Price Alerts'),
          onTap: () {
            Navigator.pushNamed(context, routePriceAlertsPage);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.connected_tv_rounded,
            color: Colors.purple,
          ),
          title: const Text('Wallet Connect'),
          onTap: () {
            Navigator.pushNamed(context, routeWalletPage);
          },
        ),
        const Divider(), // Add a divider before the new tiles.
        const ListTile(
          title: Text(
            'Join our community',
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 18, color: prim),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/help-center.png',
            height: 30,
            width: 30,
          ),
          title: const Text('Help Center'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/twitter.png',
            height: 30,
            width: 30,
          ),
          title: const Text('Twitter'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/telegram.png',
            height: 30,
            width: 30,
          ),
          title: const Text('Telegram'),
          onTap: () {},
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    ),
  );
}
