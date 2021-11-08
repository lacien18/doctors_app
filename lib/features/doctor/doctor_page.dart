import 'package:doctors_app/core/resources/assets.dart';
import 'package:doctors_app/core/resources/colors.dart';
import 'package:doctors_app/core/utils/background_circular.dart';
import 'package:doctors_app/core/utils/doctor_info_widget.dart';
import 'package:doctors_app/core/utils/primary_button.dart';
import 'package:doctors_app/features/success/success_page.dart';
import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  final int? keyTag;
  const DoctorPage({Key? key, @required this.keyTag}) : super(key: key);

  static Route<void> route(int? keyTag) {
    return MaterialPageRoute(
      builder: (_) => DoctorPage(keyTag: keyTag!),
    );
  }

  void _goBack(context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    double _height = 800.0;
    double _width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Background(),
          const Circules(),
          Positioned(
            left: 0,
            right: 0,
            child: SafeArea(
              child: Image.asset(
                Assets.doctorAna,
                height: 300,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Positioned(
            top: 300,
            width: _width,
            height: _height,
            child: const CardInfoDoctor(),
          ),
          Positioned(
            left: 0,
            top: 10,
            child: SafeArea(
              child: IconButton(
                onPressed: () => _goBack(context),
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardInfoDoctor extends StatelessWidget {
  const CardInfoDoctor({Key? key}) : super(key: key);

  void _openSuccess(context) {
    Navigator.of(context).push(SuccessPage.route());
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      margin: const EdgeInsets.all(0.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const DoctorInfoWidget(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            const Divider(),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Text(
                  'About',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the lik',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                label: 'Make an Appointment',
                onTap: () {_openSuccess(context);},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [AppColors.backgroundGrad1, AppColors.backgroundGrad2],
        ),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
    );
  }
}

class Circules extends StatelessWidget {
  const Circules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const <Widget>[
        BackgroundCircular(
          left: -100,
          top: 60,
          height: 130,
          width: 150,
          heightPositioned: 300,
        ),
        BackgroundCircular(
          right: -90,
          top: -30,
          height: 130,
          width: 150,
          heightPositioned: 300,
        ),
        BackgroundCircular(
          right: 0,
          top: 10,
          left: 0,
          height: 100,
          width: 100,
          heightPositioned: 100,
        ),
        BackgroundCircular(
          right: 0,
          top: 230,
          height: 100,
          width: 100,
          heightPositioned: 100,
        ),
      ],
    );
  }
}
