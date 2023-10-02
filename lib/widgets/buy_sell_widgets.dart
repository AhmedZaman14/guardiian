import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget appBarBuySellPage(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        const Text(
          'Buy BTC',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: prim.withOpacity(0.15),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Text(
              'USD',
              style: TextStyle(
                  color: prim, fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    ),
  );
}

Widget cononectContainer() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 0.5)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset('assets/icons/binance.png'),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Binance Connect',
            style: TextStyle(fontSize: 16),
          ),
          const Spacer(),
          Column(
            children: [
              const Text(
                '0.000023123BTC',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.green,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  child: Text(
                    'Best Rate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
