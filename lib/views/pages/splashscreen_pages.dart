part of 'pages.dart';

class SplashScreenPages extends StatefulWidget {
  const SplashScreenPages({Key? key}) : super(key: key);

  @override
  State<SplashScreenPages> createState() => _SplashScreenPagesState();
}

class _SplashScreenPagesState extends State<SplashScreenPages> {
  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: const LoginPages(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "assets/images/madu-euy.jpg",
      text: "Splash Screen",
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(
        fontSize: 40.0,
      ),
      backgroundColor: Colors.white,
    );
    return example1;
  }
}
