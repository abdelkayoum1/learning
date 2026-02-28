import 'package:fooditem/feature/presentation/login/screen/login_home.dart';
import 'package:fooditem/splash.dart';
import 'package:go_router/go_router.dart';

class Approute {
  static const loginhome = '/loginhome';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => Splash()),

      GoRoute(path: loginhome, builder: (context, state) => LoginHome()),
    ],
  );
}
