import 'package:flutter/material.dart';
import 'package:user_phone_management/ui/constants/colors.dart';

class BlackButton extends StatelessWidget {
  BlackButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  String title;
  Function() onPressed;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.06,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: blackColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: onPressed,
        child: Text(
          title,
          style: theme.textTheme.bodyMedium,
        ),
      ),
    );
  }
}
