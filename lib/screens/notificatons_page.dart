import 'package:flutter/material.dart';

import '../constants/colors.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Image.asset(
                'assets/images/notificaton_img.png',
                width: 80,
                height: 70,
              ),
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                  text: 'Notifications will appear here',
                  style: TextStyle(
                      color: prim, fontSize: 15, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
