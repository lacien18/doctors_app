import 'package:doctors_app/core/resources/colors.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String? label;
  final VoidCallback? onTap;

  const PrimaryButton({Key? key, @required this.label, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        label!,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.backgroundGrad1),
        padding: MaterialStateProperty.all(const EdgeInsetsDirectional.only(top:13.0,bottom: 13.0)),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
      ),
    );
  }
}
