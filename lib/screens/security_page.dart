import 'package:flutter/material.dart';
import 'package:guardiian/constants/colors.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  bool unLockWithPass = false;

  bool transcationSigning = true;
  bool autoLock = false;
  bool biometric = false;

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
                    'Security',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  const Text(
                    'Passcode',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Transform.scale(
                    scale: 0.7,
                    child: Switch(
                      inactiveThumbColor: prim,
                      activeColor: prim,
                      trackOutlineColor: MaterialStateColor.resolveWith(
                          (states) => Colors.transparent),
                      activeTrackColor: const Color(0xFFB3B3FF),
                      inactiveTrackColor: const Color(0xFFB3B3FF),
                      value: unLockWithPass,
                      onChanged: (bool newValue) {
                        setState(() {
                          unLockWithPass = newValue;
                        });
                      },
                      splashRadius: 18.0,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  const Text(
                    'Biometric',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Transform.scale(
                    scale: 0.7,
                    child: Switch(
                      inactiveThumbColor: prim,
                      activeColor: prim,
                      trackOutlineColor: MaterialStateColor.resolveWith(
                          (states) => Colors.transparent),
                      activeTrackColor: const Color(0xFFB3B3FF),
                      inactiveTrackColor: const Color(0xFFB3B3FF),
                      value: biometric,
                      onChanged: (bool newValue) {
                        setState(() {
                          biometric = newValue;
                        });
                      },
                      splashRadius: 18.0,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  const Text(
                    'Auto-Lock immediate',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Transform.scale(
                    scale: 0.7,
                    child: Switch(
                      inactiveThumbColor: prim,
                      activeColor: prim,
                      trackOutlineColor: MaterialStateColor.resolveWith(
                          (states) => Colors.transparent),
                      activeTrackColor: const Color(0xFFB3B3FF),
                      inactiveTrackColor: const Color(0xFFB3B3FF),
                      value: autoLock,
                      onChanged: (bool newValue) {
                        setState(() {
                          autoLock = newValue;
                        });
                      },
                      splashRadius: 18.0,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Ask Authentication For',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: prim,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  const Text(
                    'Transaction Signing',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Transform.scale(
                    scale: 0.6,
                    child: Switch(
                      inactiveThumbColor: Colors.black,
                      activeColor: Colors.black,
                      trackOutlineColor: MaterialStateColor.resolveWith(
                          (states) => Colors.transparent),
                      activeTrackColor: const Color(0xFFB3B3FF),
                      inactiveTrackColor: const Color(0xFFB3B3FF),
                      value: transcationSigning,
                      onChanged: (bool newValue) {
                        setState(() {
                          transcationSigning = newValue;
                        });
                      },
                      splashRadius: 18.0,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
