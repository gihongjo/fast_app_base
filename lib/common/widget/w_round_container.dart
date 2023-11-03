import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer(
      {super.key,
      required this.child,
      this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      this.radious = 20,
      this.Backgound});
  final Widget child;
  final EdgeInsets padding;
  final double radious;
  final Color? Backgound;

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Backgound ?? context.appColors.roundedButtonBackground,
          borderRadius: BorderRadius.circular(radious)),
      child: child,
    );
  }
}
