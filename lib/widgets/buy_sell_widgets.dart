import 'package:flutter/material.dart';
import 'package:guardiian/constants/routes.dart';
import 'package:guardiian/widgets/back_button.dart';

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

Widget spendContainer(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: prim.withOpacity(0.12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircularButton(
            color: prim,
            icon: Icons.attach_money_outlined,
            onPressed: () {},
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Spend',
                style: TextStyle(fontSize: 16),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, routeCurrencyPreferencePage);
                },
                child: const Row(
                  children: [
                    Text(
                      'USD',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          const Expanded(
            child: Text(
              '200',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget payWithContainer(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: prim.withOpacity(0.12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircularButton(
            color: prim,
            icon: Icons.credit_card,
            onPressed: () {},
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Pay with',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Select a payment method',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_right_rounded,
            size: 30,
          )
        ],
      ),
    ),
  );
}
