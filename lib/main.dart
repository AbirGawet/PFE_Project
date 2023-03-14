import 'package:arvea/Catalogue/Catalogue.dart';
import 'package:arvea/Equipe/Equipe.dart';
import 'package:arvea/Event/AddEvent.dart';
import 'package:arvea/Event/Event.dart';
import 'package:arvea/Home/HomePage.dart';
import 'package:arvea/Inscription/Login/LoginPage.dart';
import 'package:arvea/Inscription/signUp/Next.dart';
import 'package:arvea/Inscription/signUp/SignUp.dart';
import 'package:arvea/Inscription/password/password.dart';
import 'package:arvea/Inscription/signUp/next2.dart';
import 'package:arvea/Profil/Profil.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              fontFamily: 'Poppins',
            ),
            routes: {
              "Home": (context) => const HomePage(),
              "catalogue": (context) => const Catalogue(),
              "login": (context) => const LoginPage(),
              "signup": (context) => const SignUp(),
              "event": (context) => const Event(),
              "equipe": (context) => const Equipe(),
              "profil": (context) => const Profil(),
              "addEvent": (context) => const AddEvent(),
              "password": (context) => const Password(),
              "next": (context) => const Next(),
              "next2": (context) => const Next2(),
            },
            home: const HomePage(),
          );
        });
  }
}
