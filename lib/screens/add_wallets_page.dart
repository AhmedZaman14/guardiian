import 'package:flutter/material.dart';

import '../constants/routes.dart';

class AddWalletPage extends StatelessWidget {
  const AddWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
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
                'Add Wallet',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const Divider(),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Wallet Name',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              label: Text('Wallet Name'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, routeShowMnemonicsPage);
            },
            child: const Row(
              children: [
                Icon(Icons.edit_document),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Show Secret Phrase',
                ),
              ],
            ),
          ),
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'If you lose access to this device, your funds will be lost, unless you backup.',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ])),
    );
  }
}
