import 'package:flutter/material.dart';

import '../constants/colors.dart';

class PushNotificationPage extends StatefulWidget {
  const PushNotificationPage({super.key});

  @override
  State<PushNotificationPage> createState() => _PushNotificationPageState();
}

class _PushNotificationPageState extends State<PushNotificationPage> {
  @override
  Widget build(BuildContext context) {
    bool pushNot = false;

    bool transactionNot = false;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              width: double.infinity,
              child: Image.asset(
                'assets/images/appbar_img.png',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Security',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  const Text(
                    'Allow Push Notfications',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Transform.scale(
                    scale: 0.7,
                    child: Switch(
                      inactiveThumbColor: prim,
                      activeColor: prim,
                      trackOutlineColor: MaterialStateColor.resolveWith(
                          (states) => Colors.transparent),
                      activeTrackColor: const Color(0xFFB3B3FF),
                      inactiveTrackColor: const Color(0xFFB3B3FF),
                      value: pushNot,
                      onChanged: (bool newValue) {
                        setState(() {
                          pushNot = newValue;
                        });
                      },
                      splashRadius: 18.0,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  const Text(
                    'Sent And Receive',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Transform.scale(
                    scale: 0.7,
                    child: Switch(
                      inactiveThumbColor: prim,
                      activeColor: prim,
                      trackOutlineColor: MaterialStateColor.resolveWith(
                          (states) => Colors.transparent),
                      activeTrackColor: const Color(0xFFB3B3FF),
                      inactiveTrackColor: const Color(0xFFB3B3FF),
                      value: transactionNot,
                      onChanged: (bool newValue) {
                        setState(() {
                          transactionNot = newValue;
                        });
                      },
                      splashRadius: 18.0,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                'You will be notified for sent and received transactions',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
