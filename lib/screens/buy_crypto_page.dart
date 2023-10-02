import 'package:flutter/material.dart';
import 'package:guardiian/widgets/buy_sell_widgets.dart';

class BuyCryptoPage extends StatefulWidget {
  const BuyCryptoPage({super.key});

  @override
  State<BuyCryptoPage> createState() => _BuyCryptoPageState();
}

class _BuyCryptoPageState extends State<BuyCryptoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: double.infinity,
            child: Image.asset(
              'assets/images/appbar_img.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          appBarBuySellPage(context),
          Divider(
            color: Colors.grey.shade300,
            height: 0.5,
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextField(
              textAlign: TextAlign.center,
              controller: TextEditingController(text: '\$200'),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          const Text('~0.0000003322'),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: cononectContainer(),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, routeCreatePassword);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                elevation: 0,
                backgroundColor: const Color(0xFF0000FE),
              ),
              child: const Text(
                'Next',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      )),
    );
  }
}
