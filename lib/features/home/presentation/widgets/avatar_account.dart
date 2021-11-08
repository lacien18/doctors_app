import 'package:doctors_app/core/resources/assets.dart';
import 'package:flutter/material.dart';

class AvataAccount extends StatelessWidget {
  const AvataAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      child:
          const CircleAvatar(backgroundImage: AssetImage(Assets.avatarAccount)),
    );
  }
}
