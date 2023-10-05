import 'package:flutter/material.dart';
import 'package:guardiian/widgets/back_button.dart';

import '../../constants/routes.dart';
import '../../widgets/wallet_creation_stepper.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  var obscure = true;

  bool unlockWithFingure = false;

  bool agree = false;

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
          const Text(
            'The password will unlock your GUARDIIAN wallet only on this device.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: TextField(
              obscureText: obscure,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide:
                      const BorderSide(color: Color(0xFF0000FE), width: 0.7),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide:
                      const BorderSide(color: Color(0xFF0000FE), width: 0.7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide:
                      const BorderSide(color: Color(0xFF0000FE), width: 0.7),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                hintText: 'New Passcode',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0000FE),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                  icon: obscure
                      ? const Icon(
                          Icons.visibility_off,
                          color: Color(0xFF0000FE),
                          size: 20,
                        )
                      : const Icon(
                          Icons.visibility,
                          color: Color(0xFF0000FE),
                          size: 20,
                        ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: TextField(
              obscureText: obscure,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide:
                      const BorderSide(color: Color(0xFF0000FE), width: 0.7),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide:
                      const BorderSide(color: Color(0xFF0000FE), width: 0.7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide:
                      const BorderSide(color: Color(0xFF0000FE), width: 0.7),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                hintText: 'Confirm Passcode',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0000FE),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                  icon: obscure
                      ? const Icon(
                          Icons.visibility_off,
                          color: Color(0xFF0000FE),
                          size: 20,
                        )
                      : const Icon(
                          Icons.visibility,
                          color: Color(0xFF0000FE),
                          size: 20,
                        ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text('Must be at least 8 characters'),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              children: [
                Text(
                  'Unlock with Biometrics?',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                const Spacer(),
                Transform.scale(
                  scale: 0.7,
                  child: Switch(
                    inactiveThumbColor: const Color(0xFF0000FE),
                    activeColor: const Color(0xFF0000FE),
                    activeTrackColor: const Color(0xFFB3B3FF),
                    inactiveTrackColor: const Color(0xFFB3B3FF),
                    value: unlockWithFingure,
                    onChanged: (bool newValue) {
                      setState(() {
                        unlockWithFingure = newValue;
                      });
                    },
                    splashRadius: 18.0,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
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
                Navigator.pushNamed(context, routeAuthenticationPage);
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
