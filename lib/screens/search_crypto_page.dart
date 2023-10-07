import 'package:flutter/material.dart';
import 'package:guardiian/constants/colors.dart';
import 'package:guardiian/widgets/back_button.dart';

import '../constants/routes.dart';

// ignore: must_be_immutable
class SearchCryptoPage extends StatefulWidget {
  SearchCryptoPage({super.key, this.nextRoute = 'buy'});
  String nextRoute;

  @override
  State<SearchCryptoPage> createState() => _SearchCryptoPageState();
}

class _SearchCryptoPageState extends State<SearchCryptoPage> {
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
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                CircularButton(
                    color: prim,
                    icon: Icons.arrow_back_ios_new,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                const SizedBox(width: 10),
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 40,
                    child: TextField(
                      textInputAction: TextInputAction.search,
                      style: const TextStyle(fontSize: 15),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: prim, width: 0.7),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: prim, width: 0.7),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: prim, width: 0.7),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
                        hintText: 'Search',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 0),
            child: Divider(
              color: Colors.grey.shade400,
              thickness: 0.5,
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    widget.nextRoute == 'buy'
                        ? Navigator.pushNamed(context, routeBuyCryptoPage)
                        : widget.nextRoute == 'send'
                            ? Navigator.pushNamed(context, routeSendCryptoPage)
                            : Navigator.pushNamed(
                                context, routeReceiveCryptoPage);
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 10, bottom: 5),
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
                            maxRadius: 15,
                            minRadius: 10,
                            backgroundImage: AssetImage(
                              'assets/icons/doge.png',
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            'Terra (TER)',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          '0 Terra',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
