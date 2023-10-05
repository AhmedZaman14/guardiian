import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/back_button.dart';

class ReceiveCryptoPage extends StatelessWidget {
  const ReceiveCryptoPage({super.key});

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
                  'Receive BTC',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * 0.82,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: .5,
                  spreadRadius: 0.0,
                )
              ],
              border: Border.all(
                color: Colors.grey.shade300,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(children: [
              SizedBox(
                  height: 170,
                  width: 170,
                  child: Image.asset('assets/images/qr.png')),
              const SizedBox(
                height: 6,
              ),
              const SizedBox(
                  width: 160,
                  child: Text(
                    'bahdbahbahdgauuewiopweonce',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Send only  ',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                    children: [
                      const TextSpan(
                        text: 'Bitcoin(BTC) ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            'to this address. Sending any other coins may result in permanent loss.',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      )
                    ])),
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
                      scale: 1.5,
                      child: CircularButton(
                        heroTag: 'copy',
                        icon: Icons.copy,
                        color: prim,
                        onPressed: () {},
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'Copy',
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: CircularButton(
                        heroTag: 'amount',
                        icon: Icons.pin_invoke,
                        color: prim,
                        onPressed: () {},
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'Set Amount',
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: CircularButton(
                        heroTag: 'share',
                        icon: Icons.share,
                        color: prim,
                        onPressed: () {
                          // Navigator.pushNamed(
                          //     context, routeReceiveCryptoPage);
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'Share',
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
