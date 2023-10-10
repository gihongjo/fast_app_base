import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {


  const RoundedContainer({super.key, required this.child, this.padding=const EdgeInsets.symmetric(horizontal: 20,vertical: 15)});
  final Widget child;
  final EdgeInsets padding;




  @override
  Widget build(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: context.appColors.buttonBackground,
          borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}
