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
      navigateRoute: const OnboardingPages(),
      duration: 3000,
      imageSize: 200,
      imageSrc: "assets/images/ic_logo_big.png",
      text: "SMAGA APPS",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 26.0,
        fontWeight: bold,
        color: kPrimaryColor,
      ),
      backgroundColor: Colors.white,
    );
    return example1;
  }
}
