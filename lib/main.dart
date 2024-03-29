
import 'package:chat/view/login-screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';
import 'view/forget-password.dart';
import 'view/password-reseted.dart';
import 'view/reset-password-screen.dart';
import 'view/signup-screen.dart';
import 'view/verification-code-screen.dart';

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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      getPages: [
        GetPage(name: '/signup', page: ()=>SignupScreen()),
        GetPage(name: '/forgetPassword', page: ()=>ForgetPassword()),
        GetPage(name: '/verificationCode', page: ()=>VerificationCodeScreen()),
        GetPage(name: '/resetPassword', page: ()=>ResetPassword()),
        GetPage(name: '/passwordReseted', page: ()=>PasswordReseted()),

      ],
    );
  }
}
