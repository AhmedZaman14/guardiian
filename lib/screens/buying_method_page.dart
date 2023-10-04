import 'package:flutter/material.dart';
import 'package:guardiian/widgets/buy_sell_widgets.dart';

import '../constants/colors.dart';

class BuyingMethodPage extends StatefulWidget {
  const BuyingMethodPage({super.key});

  @override
  State<BuyingMethodPage> createState() => _BuyingMethodPageState();
}

class _BuyingMethodPageState extends State<BuyingMethodPage> {
  String? _selectedCountry = 'Canada';

  final List<String> countryNames = [
    'United States',
    'Canada',
    'United Kingdom',
    'Australia',
  ];
  @override
  Widget build(BuildContext context) {
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
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: prim,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade300,
            height: 0.5,
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: 120,
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                value: _selectedCountry,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCountry = newValue;
                  });
                },
                items: countryNames.map((String countryName) {
                  return DropdownMenuItem<String>(
                    value: countryName,
                    child: Row(
                      children: <Widget>[
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.location_on,
                          size: 18,
                          color: prim,
                        ),
                        Expanded(
                          child: Text(
                            countryName,
                            overflow: TextOverflow.clip,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          spendContainer(context),
          const SizedBox(height: 10),
          payWithContainer(context),
        ],
      )),
    );
  }
}
