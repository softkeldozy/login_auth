// import 'package:flutter/material.dart';
// import 'package:login_auth/routes/app_routes.dart';
//
//
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
//         useMaterial3: true,
//       ),
//       home: const SignInScreen(title: 'Sign In'),
//     );
//   }
// }
//
//
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_auth/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:login_auth/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:login_auth/routes/app_routes.dart';
// import 'package:flutter/scheduler.dart';
import 'package:login_auth/theme/theme_helper.dart';
import 'package:login_auth/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'login_auth',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.signupScreen,
      routes: AppRoutes.routes,
      home: SignupScreen(),
    );
  }
}

