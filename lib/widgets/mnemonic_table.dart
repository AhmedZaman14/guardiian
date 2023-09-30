import 'package:flutter/material.dart';

Widget mnemonicTable(bool withIndex) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        width: 1,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Table(
      border: TableBorder.symmetric(
        inside: const BorderSide(width: 1),
      ),
      children: List.generate(4, (index) {
        return TableRow(
          children: List.generate(3, (cellIndex) {
            final cellNumber = (index * 3) + cellIndex + 1;
            return TableCell(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Center(
                  child: Column(
                    children: [
                      withIndex
                          ? Text(
                              '$cellNumber',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            )
                          : Container(),
                      const Text(
                        'individual',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        );
      }),
    ),
  );
}

Widget mnemonicsInput() {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(
        width: 1,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: List.generate(6, (columnIndex) {
        return Row(
          children: List.generate(2, (textFieldIndex) {
            final index = (columnIndex * 2) + textFieldIndex + 1;
            return Expanded(
              child: Row(
                children: [
                  Text(
                    '$index',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SizedBox(
                        height: 30,
                        child: TextField(
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            // labelText: '$index',
                            contentPadding: const EdgeInsets.all(5),

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        );
      }),
    ),
  );
}
