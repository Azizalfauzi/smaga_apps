part of 'pages.dart';

class OnboardingPages extends StatefulWidget {
  const OnboardingPages({Key? key}) : super(key: key);

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  void _addStatusPage() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var statusPage = 1;
    await preferences.setInt('statuspage', statusPage);
  }

  final introKey = GlobalKey<_OnboardingPagesState>();

  void _onIntroEnd(context) {
    Navigator.pushNamed(
      context,
      '/login-page',
    );
    _addStatusPage();
  }

  Widget _buildImage(String images, [double width = 200]) {
    return Image.asset('assets/images/$images', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 16.0);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Selamat Datang",
          body: "Aplikasi milik SMAN 1 Gondang Tulungagung",
          image: _buildImage('ic_onboard1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Bermimpilah Setinggi Langit",
          body: "Semua akan lebih mudah menggunakan SMAGA APPS",
          image: _buildImage('ic_onboard2.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
