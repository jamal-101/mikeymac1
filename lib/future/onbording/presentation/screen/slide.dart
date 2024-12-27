import 'package:flutter/material.dart';

class Slide extends StatelessWidget {
  bool isActive;
  Slide(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: isActive ? 12 : 12,
      width: isActive ? 20 : 12,
      decoration: BoxDecoration(
          color: isActive ? Colors.black : const Color(0xFFD9D9D9),
          borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}
