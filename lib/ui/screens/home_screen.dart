import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:user_phone_management/gen/assets.gen.dart';
import 'package:user_phone_management/ui/constants/strings.dart';
import 'package:user_phone_management/ui/widgets/black_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const screenId = '/home_screen';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              HomeScreenStrings.appbarTitle,
              style: theme.textTheme.titleLarge,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Lottie.asset(Assets.lottie.animationLmyqpb7n, height: 200),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.05),
                  Row(
                    children: [
                      Expanded(
                        child: BlackButton(
                          title: HomeScreenStrings.register,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: size.width * 0.03),
                      Expanded(
                        child: BlackButton(
                          title: HomeScreenStrings.report,
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
