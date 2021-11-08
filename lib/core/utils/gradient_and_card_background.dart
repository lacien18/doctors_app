import 'package:doctors_app/core/resources/colors.dart';
import 'package:flutter/material.dart';

class BackgroundGradAndCard extends StatelessWidget {
  const BackgroundGradAndCard({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      margin: const EdgeInsets.all(0.0),
      child: Container(),
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
