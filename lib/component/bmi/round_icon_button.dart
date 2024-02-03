import 'package:flutter/material.dart';
// import 'package:app_testing/input_page.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final Function()? buttonPress;
  const RoundIconButton({super.key, this.icon, this.buttonPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      elevation: 6.0,
      fillColor: const Color(0xffffffff),
      constraints: const BoxConstraints.tightFor(width: 48.0, height: 48.0),
      onPressed: () {
        buttonPress?.call();
      },
      child: Icon(icon),
    );
  }
}
