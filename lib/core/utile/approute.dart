import 'package:flutter/material.dart';
import 'package:fooditem/feature/presentation/login/screen/login_home.dart';
import 'package:fooditem/feature/presentation/sign%20up/screen/singn.dart';
import 'package:fooditem/splash.dart';
import 'package:go_router/go_router.dart';

class Approute {
  static const loginhome = '/loginhome';
  static const signhome = '/signhome';
  static const homescreen = '/homescreen';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => Splash()),

      GoRoute(path: loginhome, builder: (context, state) => LoginHome()),
      GoRoute(path: signhome, builder: (context, state) => SignIn()),

      GoRoute(path: homescreen, builder: (context, state) => SizedBox()),
    ],
  );
}
