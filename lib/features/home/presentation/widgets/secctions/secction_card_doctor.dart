import 'package:doctors_app/core/resources/assets.dart';
import 'package:doctors_app/core/resources/colors.dart';
import 'package:flutter/material.dart';

class CardAboutDoctor extends StatelessWidget {

  const CardAboutDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
      child: Container(
        decoration: const BoxDecoration(
         boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(2.0, 2.0),
              blurRadius: 7.0,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [AppColors.backgroundGrad1, AppColors.backgroundGrad2],
          ),
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        padding: const EdgeInsets.only(top: 20.0, right: 20.0),
        child: Stack(
          children: const <Widget>[
            BackgroundCardCircle(),
            ContentCardAboutDoctor(),
          ],
        ),
      ),
    );
  }
}

class ContentCardAboutDoctor extends StatelessWidget {
  const ContentCardAboutDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Dr.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'Ana Marquez',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Dentistry Specialist',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Image.asset(
            Assets.doctorAna,
            height: 150,
          ),
        ],
      ),
    );
  }
}

class BackgroundCardCircle extends StatelessWidget {

  const BackgroundCardCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -100,
      top: 0,
      child: Container(
        height: 130,
        width: 250,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
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
