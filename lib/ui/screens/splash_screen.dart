import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';
import 'package:user_phone_management/gen/assets.gen.dart';
import 'package:user_phone_management/ui/constants/colors.dart';
import 'package:user_phone_management/ui/constants/strings.dart';
import 'package:user_phone_management/ui/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);
  static const screenId = '/splash_screen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateScreen() ;
  }
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(Assets.lottie.animationLmyntckq, height: 300),
              SizedBox(height: size.height * 0.05),
              Text(SplashScreenStrings.logoTitle,
                  style: theme.textTheme.titleMedium),
              SizedBox(height: size.height * 0.05),
              const SpinKitSpinningLines(
                size: 35,
                color: blackColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> navigateScreen() async {
    Future.delayed(const Duration(seconds: 5)).then((value) {
      return Navigator.pushNamed(context, HomeScreen.screenId);
    });
  }
}
