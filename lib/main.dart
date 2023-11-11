import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:namaste_bharat1/home/forgot_password.dart';
import 'package:namaste_bharat1/home/signin_screen.dart';
import 'package:namaste_bharat1/home/signup_screen.dart';
import 'package:namaste_bharat1/home/splash_screen.dart';
import 'package:namaste_bharat1/screen/change_password.dart';
import 'package:namaste_bharat1/screen/fetch_data.dart';
 import 'package:namaste_bharat1/screen/home_screen.dart';
import 'package:namaste_bharat1/screen/update_data.dart';
import 'package:namaste_bharat1/screen/user_dashbord.dart';
import 'package:namaste_bharat1/screen/user_profile.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Otp Generator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen' : (context) => SplashScreen(),
        'signin_screen' : (context) => SignIn(),
        'signup_screen' : (context) => SignUpScreen(),
        'forgot_password' : (context) => ForgotPassword(),
        'home_screen' : (context) => HomeScreen(),
        'user_dashboard' : (context) => UserDashboard(),
        'user_profile' : (context) => UserProfile(),
        'change_password' : (context) => ChangePassword(),
        'update_data' : (context) => UpdateData(),
        'fetch_data' : (context) => FetchtData(),
      },
    );
  }
}

