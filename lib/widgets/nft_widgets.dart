import 'package:flutter/material.dart';

Widget collectionsContainer() {
  //generate a container with a profile circular image and a text below image
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    padding: const EdgeInsets.all(10),
    child: const Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(
            'assets/images/profile.jfif',
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 70,
          child: Text(
            'Apes yatch club',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
            maxLines: 2, // Limit the text to 2 lines
            overflow: TextOverflow.ellipsis, // Show ellipsis if text overflows
          ),
        ),
      ],
    ),
  );
}

Widget categoriesContainer() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        Container(
          width: 120,
          height: 90,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/nft_cover.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const SizedBox(
          width: 60,
          child: Text(
            'Sports',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
            maxLines: 2, // Limit the text to 2 lines
            overflow: TextOverflow.ellipsis, // Show ellipsis if text overflows
          ),
        ),
      ],
    ),
  );
}

Widget coinContainer() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    width: 110,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.grey),
    ),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/icons/bitcoin.png', height: 30, width: 30),
          const Expanded(
              child: Text(
            'Bitcoin',
            overflow: TextOverflow.ellipsis,
          )),
          const Icon(Icons.arrow_right)
        ]),
  );
}
