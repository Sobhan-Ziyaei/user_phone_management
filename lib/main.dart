import 'package:flutter/material.dart';
import 'package:user_phone_management/models/object_box.dart';
import 'package:user_phone_management/router/app_router.dart';
import 'package:user_phone_management/ui/screens/splash_screen.dart';
import 'package:user_phone_management/ui/theme/theme.dart';

late ObjectBox objectBox;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  objectBox = await ObjectBox.create();
  runApp(
    MyApp(
      appRouter: AppRouter(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      onGenerateRoute: appRouter.onGenerateRoute,
      initialRoute: SplashScreen.screenId,
    );
  }
}
