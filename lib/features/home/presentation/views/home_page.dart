import 'package:doctors_app/core/resources/colors.dart';
import 'package:doctors_app/core/utils/app_bar.dart';
import 'package:doctors_app/features/home/presentation/widgets/avatar_account.dart';
import 'package:doctors_app/features/home/presentation/widgets/secctions/seccion_ranking_doctors.dart';
import 'package:doctors_app/features/home/presentation/widgets/secctions/secction_card_doctor.dart';
import 'package:doctors_app/features/home/presentation/widgets/search_bar.dart';
import 'package:doctors_app/features/home/presentation/widgets/secctions/secction_consultation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundScaffold,
      appBar: const MyAppBar(
        title: 'Welcome,',
        subtitle: 'Lucia Castro',
        trailing: AvataAccount(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SearchBar(),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(3, (index) => const CardAboutDoctor()),
              ),
            ),
            const SizedBox(height: 20),
            const MedicalConsultation(),
            const SizedBox(height: 20),
            const RankingDoctos()
          ],
        ),
      ),
    );
  }
}
