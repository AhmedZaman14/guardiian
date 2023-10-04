import 'package:flutter/material.dart';
import 'package:guardiian/screens/search_crypto_page.dart';

import '../constants/colors.dart';
import '../constants/routes.dart';
import 'back_button.dart';

Widget flexibleSpace(BuildContext context) {
  return FlexibleSpaceBar(
      background: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: CircleAvatar(
            maxRadius: 30, child: Image.asset('assets/images/logo_img.png')),
      ),
      const Text(
        'My Wallet',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
      const Text(
        "\$0.00",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Transform.scale(
                  scale: 1.2,
                  child: CircularButton(
                    heroTag: 'scan',
                    icon: Icons.qr_code,
                    color: prim,
                    onPressed: () {},
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Scan',
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Transform.scale(
                  scale: 1.2,
                  child: CircularButton(
                    heroTag: 'send',
                    icon: Icons.arrow_outward_rounded,
                    color: prim,
                    onPressed: () {},
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Send',
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Transform.scale(
                  scale: 1.2,
                  child: CircularButton(
                    heroTag: 'recieve',
                    icon: Icons.arrow_downward,
                    color: prim,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchCryptoPage(
                              nextRoute: 'receive',
                            ),
                          ));
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Receive',
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Transform.scale(
                  scale: 1.2,
                  child: CircularButton(
                    heroTag: 'buy',
                    icon: Icons.credit_card,
                    color: prim,
                    onPressed: () {
                      Navigator.pushNamed(context, routeSearchCryptoPage);
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Buy',
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Transform.scale(
                  scale: 1.2,
                  child: CircularButton(
                    heroTag: 'swap',
                    icon: Icons.swap_horiz_outlined,
                    color: prim,
                    onPressed: () {},
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Swap',
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Transform.scale(
                  scale: 1.2,
                  child: CircularButton(
                    heroTag: 'bridge',
                    icon: Icons.roller_shades_closed_outlined,
                    color: prim,
                    onPressed: () {},
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Bridge',
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
          ],
        ),
      )
    ],
  ));
}

Widget showSheet(BuildContext context, Function()? onPressed) {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10))),
    width: double.infinity,
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icons/cong.png',
          height: 50,
          width: 50,
        ),
        const Text(
          'Congratulations!',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        const Text(
          'You have created a wallet',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 16.0),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color(0xFF0000FE),
            ),
            child: const Text(
              'OK',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget nevBar(Function(int currentIndex) onTap, int currentIndex) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.shifting,
    elevation: 20,
    landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
    selectedFontSize: 15,
    selectedIconTheme: const IconThemeData(color: prim),
    unselectedIconTheme: const IconThemeData(color: Colors.black87),
    selectedItemColor: prim,
    selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
    unselectedFontSize: 12,
    unselectedItemColor: Colors.black,
    showUnselectedLabels: true,
    unselectedLabelStyle: const TextStyle(
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.wallet,
        ),
        label: 'Wallet',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.swap_horizontal_circle_outlined),
        label: 'Swap',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.layers),
        label: 'NFTs',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.explore_outlined),
        label: 'Discover',
      ),
    ],
    currentIndex: currentIndex,
    onTap: onTap,
  );
}

Widget tokenContainer() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade300,
            ),
          ) // set border width))
          ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/icons/doge.png'),
            ),
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terra (TER)',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  '\$1.00',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$0.00',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '0.00',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
