import 'package:flutter/material.dart';
import 'package:guardiian/constants/routes.dart';
import 'package:guardiian/widgets/mnemonic_table.dart';

import '../../widgets/back_button.dart';
import '../../widgets/wallet_creation_stepper.dart';

class GenerateMnemonicsPage extends StatefulWidget {
  const GenerateMnemonicsPage({super.key});

  @override
  State<GenerateMnemonicsPage> createState() => _GenerateMnemonicsPageState();
}

class _GenerateMnemonicsPageState extends State<GenerateMnemonicsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
            width: double.infinity,
            child: Image.asset(
              'assets/images/appbar_img.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircularButton(
                    color: const Color(0xFF0000FE),
                    icon: Icons.arrow_back_ios_new,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                const Expanded(
                  child: StepperWidget(
                    currentIndex: 2,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            'Backup Mnemonics',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Save these mnemonics some where safe w.r.t index.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: mnemonicTable(true),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Text(
                '12- word version',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0000FE)),
              ),
              Spacer(),
              Text(
                'Change',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0000FE)),
              ),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, routeTranscribeMnemonicsPage);
              },
              style: ElevatedButton.styleFrom(
                // padding: const EdgeInsets.symmetric(horizontal: 34),
                elevation: 0,
                backgroundColor: const Color(0xFF0000FE),
              ),
              child: const Text(
                'Continue',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      )),
    );
  }
}
