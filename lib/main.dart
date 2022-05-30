import 'package:flutter/material.dart';
import 'package:smaga_apps/views/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': ((context) => const SplashScreenPages()),
        '/login-page': ((context) => const LoginPages()),
        '/main-page': ((context) => const MainPage(initialPage: 0)),
        '/jadwal-page': ((context) => const JadwalPage()),
        '/jadwal-detail-page': ((context) => const DetailJadwalPage()),
        '/pengumuman-detail-page': ((context) => const DetailPengumumanPage()),
      },
    );
  }
}
