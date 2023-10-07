import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:guardiian/constants/routes.dart';
import 'package:guardiian/widgets/wallet_creation_stepper.dart';

import '../../widgets/back_button.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  var obscure = true;

  bool unlockWithFingure = false;

  bool agree = false;

  int authChoice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
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
                    currentIndex: 1,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Create Password',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            // height: 200,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: .5,
                  spreadRadius: 0.0,
                  // offset: Offset(1.0, .1),
                )
              ],
              border: Border.all(
                color: Colors.grey.shade300,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Authentication Required',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: CircularButton(
                        heroTag: 'fingerprint',
                        color: authChoice == 1
                            ? const Color(0xFF0000FE)
                            : Colors.white,
                        icon: Icons.fingerprint,
                        onPressed: () {
                          setState(() {
                            authChoice = 1;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Transform.scale(
                      scale: 1.5,
                      child: CircularButton(
                        heroTag: 'faceRecognition',
                        color: authChoice == 2
                            ? const Color(0xFF0000FE)
                            : Colors.white,
                        icon: Icons.emoji_emotions_outlined,
                        onPressed: () {
                          setState(() {
                            authChoice = 2;
                          });
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: authChoice == 1
                        ? 'Please use fingerprint to login.\n\n'
                        : 'Please use face recognition to login.\n\n',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'PIN',
                        style: const TextStyle(
                          color: Color(0xFF0000FE),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, routePasscodePage);
                          },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                        width: 0.5,
                      ),
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        authChoice == 1
                            ? Icons.fingerprint_outlined
                            : Icons.emoji_emotions_outlined,
                        size: 35,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Checkbox(
                  value: agree,
                  activeColor: const Color(0xFF0000FE),
                  onChanged: (value) {
                    setState(() {
                      agree = value!;
                    });
                  }),
              Expanded(
                child: RichText(
                    text: TextSpan(
                        text:
                            'I undertand that GUARDIIAN can recover the passcode for me. ',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                        children: const [
                      TextSpan(
                        text: 'Read more...',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xFF0000FE),
                        ),
                      ),
                    ])),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, routeCreatePassword);
                showDialog(
                    context: context,
                    builder: (context) {
                      return const Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(
                              backgroundColor: Colors.white,
                              color: Color(0xFF0000FE),
                            ),
                            Text(
                              'Creating your wallet...',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Calibri'),
                            ),
                          ],
                        ),
                      );
                    }).then((value) => Navigator.pushNamed(
                      context,
                      routeSecureWalletPage,
                    ));
              },
              style: ElevatedButton.styleFrom(
                // padding: const EdgeInsets.symmetric(horizontal: 34),
                elevation: 0,
                backgroundColor: const Color(0xFF0000FE),
              ),
              child: const Text(
                'Create Passcode',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
