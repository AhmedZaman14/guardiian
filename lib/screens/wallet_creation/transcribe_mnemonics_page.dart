import 'package:flutter/material.dart';
import 'package:guardiian/constants/routes.dart';

import '../../widgets/back_button.dart';
import '../../widgets/mnemonic_table.dart';
import '../../widgets/wallet_creation_stepper.dart';

class TranscribeMnemonicsPage extends StatelessWidget {
  const TranscribeMnemonicsPage({super.key});

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
                'Transcribe the following mnemonics in order.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: mnemonicsInput(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: mnemonicTable(false),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, routeMainnetImportingLoadingPage);
                },
                style: ElevatedButton.styleFrom(
                  // padding: const EdgeInsets.symmetric(horizontal: 34),
                  elevation: 0,
                  backgroundColor: const Color(0xFF0000FE),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
