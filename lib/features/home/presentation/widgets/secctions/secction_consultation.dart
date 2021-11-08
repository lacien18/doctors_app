import 'package:doctors_app/core/resources/colors.dart';
import 'package:doctors_app/features/home/constants/list_consultation.dart';
import 'package:doctors_app/features/home/models/list_consultation_model.dart';
import 'package:flutter/material.dart';

class MedicalConsultation extends StatelessWidget {
  const MedicalConsultation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const Text(
            'Medical Consultation',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              listConsultation.length,
              (index) => CardConsultation(item: listConsultation[index]),
            ),
          ),
        ),
      ],
    );
  }
}

class CardConsultation extends StatelessWidget {
  final ConsultationModel? item;

  const CardConsultation({Key? key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Card(
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                color: AppColors.backgroundGrad2,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Image.asset(
                  item!.imageUrl!,
                  height: 50,
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item!.type!,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Specialist',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
