import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  static const String name = '/splash';
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: SvgPicture.asset('assets/images/logo.svg'),
          ),
          Spacer(),
          CircularProgressIndicator(color: Colors.grey,),
          Text('version 1.0')
        ],
      ),
    );
  }
}
