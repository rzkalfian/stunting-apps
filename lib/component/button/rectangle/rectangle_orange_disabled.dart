import 'package:flutter/material.dart';
import '../../../screen/helper/global_colors.dart';

class RectangleOrangeDisabled extends StatelessWidget {
  const RectangleOrangeDisabled({Key? key, required this.title})
      : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    GlobalColors globalColors = GlobalColors();

    return Container(
      decoration: BoxDecoration(
          color: globalColors.bgOrangeDisabled,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: globalColors.bgOrange)),
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
            color: globalColors.bgOrange,
            fontSize: 14,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
