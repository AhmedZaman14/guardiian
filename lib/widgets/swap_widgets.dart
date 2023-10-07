import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget swapContainer(String cryptoName, String icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('You Pay'),
              const SizedBox(
                width: 100,
                child: TextField(
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '0.00',
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Balance: ',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                  children: [
                    TextSpan(
                      text: '5 $cryptoName',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey.shade200,
              child: Image.asset(
                icon,
                // width: 65,
                // height: 65,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              cryptoName,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.arrow_forward_ios,
              size: 12,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget percentContainer(String percent, Function() onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: prim.withOpacity(0.15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          percent,
          style: const TextStyle(
              color: prim, fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}
