import 'package:flutter/material.dart';
import 'package:guardiian/widgets/back_button.dart';

import '../constants/routes.dart';

class PermissionPage extends StatelessWidget {
  const PermissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            width: double.infinity,
            child: Image.asset(
              'assets/images/appbar_img.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                CircularButton(
                    color: const Color(0xFF0000FE),
                    icon: Icons.arrow_back_ios_new,
                    onPressed: () {}),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Help Us Improve Guardiian',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'GUARDIIAN would like to gather basic usage data to better understand how our users interact with the mobile app. This data will be used to improve the app and will be used to continually improve the user experience of our product.',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              ' GUARDIIAN Wallet will...\nAlways allow you to opt-out via Settings',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'Send anonymzed click & page view events',
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'Send country, region and city data',
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.close,
                  color: Colors.red,
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'Never collect keys, addresses, transactions, balances, hash or any personal information',
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.close,
                  color: Colors.red,
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'Never collect your IP address',
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.close,
                  color: Colors.red,
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'Never sell data for profit. Ever!',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
                text: TextSpan(
                    text:
                        'This data is aggregated to our privacy practices, please read our privacy policy ',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                    children: const [
                  TextSpan(
                    text: 'here.',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ])),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white,
                      side: const BorderSide(
                        color: Color(0xFF0000FE),
                      ),
                    ),
                    child: const Text(
                      'No Thanks',
                      style: TextStyle(
                          color: Color(0xFF0000FE),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, routeCreatePassword);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 34),
                      elevation: 0,
                      backgroundColor: const Color(0xFF0000FE),
                    ),
                    child: const Text(
                      'I Agree',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 25),
        ]),
      )),
    );
  }
}
