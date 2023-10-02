import 'package:flutter/material.dart';
import 'package:guardiian/constants/routes.dart';

class ImportingMainnetPage extends StatefulWidget {
  const ImportingMainnetPage({super.key});

  @override
  State<ImportingMainnetPage> createState() => _ImportingMainnetPageState();
}

class _ImportingMainnetPageState extends State<ImportingMainnetPage> {
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
            const SizedBox(height: 25),
            const Text(
              'Importing Mainnet Data',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 5),
              child: LinearProgressIndicator(
                value: 0.85,
                backgroundColor: Colors.grey[300],
                color: const Color(0xFF0000FE),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'The mnemonics should be placed in a safe space to prevent loss.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 15),
              child: Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.transcribe,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transcribe the mnemonic.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Dont't make copies or take screenshots",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.safety_check,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Store in a safe place.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Once lost the assets can not be recovered.',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
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
                  'Later',
                  style: TextStyle(
                      color: Color(0xFF0000FE), fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, routeAddMainnetPage);
                },
                style: ElevatedButton.styleFrom(
                  // padding: const EdgeInsets.symmetric(horizontal: 34),
                  elevation: 0,
                  backgroundColor: const Color(0xFF0000FE),
                ),
                child: const Text(
                  'Generate',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
