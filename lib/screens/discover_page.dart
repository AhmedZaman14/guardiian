import 'package:flutter/material.dart';

import '../constants/colors.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
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
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              'Discover',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            color: Colors.grey.shade300,
            height: 0.5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Stacking',
                style: TextStyle(
                  color: prim,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 10),
            itemCount: 2,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  //select
                },
                child: discoverContainer('+8.33%')),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Lending / Borrowing',
                style: TextStyle(
                  color: prim,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 10),
            itemCount: 15,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  //select
                },
                child: discoverContainer('-8.33%')),
          ),
        ],
      )),
    );
  }

  Widget discoverContainer(String value) {
    var check = value.contains('+') ? true : false;
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(
            bottom: BorderSide(color: Colors.black12, width: 0.5),
            top: BorderSide(color: Colors.black12, width: 0.5),
          ) // ))
          ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/icons/bitcoin.png'),
            ),
          ),
          const Expanded(
            child: Text(
              'Bitcoin',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18.0,
              ),
            ),
          ),
          const Spacer(),
          RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
                text: '\$3731.00\n',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                    text: '+8.33%',
                    style: TextStyle(
                      color: check ? Colors.green : Colors.red,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
