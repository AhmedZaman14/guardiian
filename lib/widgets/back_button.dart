import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final VoidCallback onPressed;
  final String? heroTag;

  const CircularButton({
    super.key,
    required this.color,
    required this.icon,
    required this.onPressed,
    this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 32,
      child: FloatingActionButton(
        heroTag: heroTag,
        elevation: 0,
        shape: const CircleBorder(
          side: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
        backgroundColor: color,
        onPressed: onPressed,
        child: Icon(
          icon,
          size: 19,
          color: color == Colors.white ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
