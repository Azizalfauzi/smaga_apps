import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smaga_apps/cubit/auth/auth_cubit.dart';
import 'package:smaga_apps/cubit/jadwal/jadwal_cubit.dart';
import 'package:smaga_apps/cubit/pengumuman/pengumuman_cubit.dart';
import 'package:smaga_apps/views/pages/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthCubit()),
        BlocProvider(create: (_) => PengumumanCubit()),
        BlocProvider(create: (_) => JadwalCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': ((context) => const SplashScreenPages()),
          '/onboarding-page': ((context) => const OnboardingPages()),
          '/login-page': ((context) => const LoginPages()),
          '/main-page': ((context) => const MainPage(initialPage: 0)),
          '/jadwal-page': ((context) => const JadwalPage()),
          '/jadwal-detail-page': ((context) => const DetailJadwalPage()),
          '/pengumuman-detail-page': ((context) =>
              const DetailPengumumanPage()),
        },
      ),
    );
  }
}
