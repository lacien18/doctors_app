import 'package:flutter/material.dart';

class DoctorInfoWidget extends StatelessWidget {
  const DoctorInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Dr. Ana Marquez',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Dentistry Specialist',
        ),
        const SizedBox(height: 10),
        Row(
        mainAxisSize: MainAxisSize.min,
          children: List.generate(
            5,
            (index) => const Icon(Icons.star_rounded, color: Colors.amber),
          ),
        )
      ],
    );
  }
}
