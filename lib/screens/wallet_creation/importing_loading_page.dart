import 'package:flutter/material.dart';
import 'package:guardiian/constants/routes.dart';

class MainnetImportingLoadingPage extends StatefulWidget {
  const MainnetImportingLoadingPage({super.key});

  @override
  State<MainnetImportingLoadingPage> createState() =>
      _MainnetImportingLoadingPageState();
}

class _MainnetImportingLoadingPageState
    extends State<MainnetImportingLoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            width: double.infinity,
            child: Image.asset(
              'assets/images/appbar_img.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 35),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              'assets/images/logo_img.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 35),
          const Text(
            'Importing Mainnet Data',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: LinearProgressIndicator(
              value: 0.25,
              backgroundColor: Colors.grey[300],
              color: const Color(0xFF0000FE),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'When a transfer succeeds, you can not recover your assets.',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, routeImportingMainnetPage);
              },
              child: const Text(
                  'click this to go to next page this is just temporary'))
        ],
      ),
    );
  }
}
