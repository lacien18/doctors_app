import 'package:doctors_app/core/resources/colors.dart';
import 'package:flutter/material.dart';

class BackgroundCircular extends StatelessWidget {
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final double? width;
  final double? height;
  final double? heightPositioned;

  const BackgroundCircular({
    Key? key,
    this.bottom,
    this.heightPositioned,
    this.height,
    this.left,
    this.right,
    this.top,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      height: heightPositioned,
      child: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.topRight,
            colors: [
              AppColors.backgroundGrad1,
              AppColors.backgroundGrad2,
            ],
          ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
