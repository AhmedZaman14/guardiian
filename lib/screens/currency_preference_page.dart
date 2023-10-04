import 'package:flutter/material.dart';

import '../constants/routes.dart';

class CurrencyPreferencePage extends StatefulWidget {
  const CurrencyPreferencePage({super.key});

  @override
  State<CurrencyPreferencePage> createState() => _CurrencyPreferencePageState();
}

class _CurrencyPreferencePageState extends State<CurrencyPreferencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Preferences',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, routeSelectCurrencyPage);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Currency',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'USD',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
