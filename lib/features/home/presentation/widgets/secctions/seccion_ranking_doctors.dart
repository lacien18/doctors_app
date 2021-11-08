import 'package:doctors_app/core/resources/assets.dart';
import 'package:doctors_app/core/resources/colors.dart';
import 'package:doctors_app/core/utils/doctor_info_widget.dart';
import 'package:doctors_app/features/doctor/doctor_page.dart';
import 'package:flutter/material.dart';

class RankingDoctos extends StatelessWidget {
  const RankingDoctos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const Text(
            'Ranking Doctors',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(2, (index) => DoctorItem(keyTag: index)),
          ),
        ),
      ],
    );
  }
}

class DoctorItem extends StatelessWidget {
  final int? keyTag;

  const DoctorItem({Key? key, @required this.keyTag}) : super(key: key);

  void _openDoctor(context) {
    Navigator.of(context).push(DoctorPage.route(keyTag!));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: InkWell(
        onTap: () => _openDoctor(context),
        child: Card(
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    color: AppColors.backgroundGrad2,
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 15.0, top: 10.0, right: 10.0),
                      height: 80,
                      child: Image.asset(
                        Assets.doctorAna,
                        fit: BoxFit.scaleDown,
                      ),
                    )),
                const SizedBox(width: 10),
                const DoctorInfoWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
