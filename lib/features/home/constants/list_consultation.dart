import 'package:doctors_app/core/resources/assets.dart';
import 'package:doctors_app/features/home/models/list_consultation_model.dart';

final listConsultation = <ConsultationModel>[
  ConsultationModel(imageUrl: Assets.general, type: 'General'),
  ConsultationModel(imageUrl: Assets.cardiology, type: 'Cardiology'),
  ConsultationModel(imageUrl: Assets.odontology, type: 'Odontology'),
  ConsultationModel(imageUrl: Assets.ophthalmology, type: 'Ophthalmology'),
];
