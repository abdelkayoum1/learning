import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fooditem/core/networking/supabase.dart';
import 'package:fooditem/core/utile/approute.dart';
import 'package:fooditem/feature/data/homerepo/home_repo/home_repo.dart';
import 'package:fooditem/feature/data/homerepo/home_repo/home_repo_iplm.dart';
import 'package:fooditem/feature/presentation/login/cubit/cubit/login_cubit_cubit.dart';
import 'package:fooditem/splash.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabasee.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubitCubit(HomeRepoIplm())),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        // home: Splash(),
        routerConfig: Approute.router,
      ),
    );
  }
}
