import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  final int currentIndex;
  const StepperWidget({
    super.key,
    required this.currentIndex,
  });

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  late List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "Create Password",
          textStyle: const TextStyle(color: Colors.black, fontSize: 10),
        ),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0xFF0000FE),
              borderRadius: BorderRadius.all(Radius.zero)),
        )),
    StepperData(
        title: StepperText(
          "Secure Wallet",
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 10,
          ),
        ),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: widget.currentIndex == 2 || widget.currentIndex == 3
                ? const Color(0xFF0000FE)
                : const Color(0xFFB3B3FF),
            borderRadius: const BorderRadius.all(Radius.zero),
          ),
        )),
    StepperData(
        title: StepperText(
          "Confirm Phase",
          textStyle: const TextStyle(color: Colors.black, fontSize: 10),
        ),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: widget.currentIndex == 3
                  ? const Color(0xFF0000FE)
                  : const Color(0xFFB3B3FF),
              borderRadius: const BorderRadius.all(Radius.zero)),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return AnotherStepper(
      stepperList: stepperData,
      stepperDirection: Axis.horizontal,
      activeBarColor: const Color(0xFF0000FE),
      inActiveBarColor: const Color(0xFFB3B3FF),
      activeIndex: widget.currentIndex,
      inverted: true,
      iconWidth: 25,
      iconHeight: 25,
    );
  }
}
