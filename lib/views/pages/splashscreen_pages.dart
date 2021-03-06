part of 'pages.dart';

class SplashScreenPages extends StatefulWidget {
  const SplashScreenPages({Key? key}) : super(key: key);

  @override
  State<SplashScreenPages> createState() => _SplashScreenPagesState();
}

class _SplashScreenPagesState extends State<SplashScreenPages> {
  @override
  void initState() {
    _checkStatusPageToken();
    super.initState();
  }

  Future<void> _checkStatusPageToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int? statusPage = preferences.getInt('statuspage');
    User? user = FirebaseAuth.instance.currentUser;
    var duration = const Duration(milliseconds: 2000);
    Timer(duration, () {
      if (statusPage != null) {
        if (user == null) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/login-page', (route) => false);
        } else {
          context.read<AuthCubit>().getCurrentUser(user.uid);
          Navigator.pushNamedAndRemoveUntil(
              context, '/main-page', (route) => false);
        }
      } else {
        Navigator.pushNamedAndRemoveUntil(
            context, '/onboarding-page', (route) => false);
      }
    });
  }

  Widget imageCenter() {
    return Container(
      height: 120,
      width: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/ic_logo_big.png'),
        ),
      ),
    );
  }

  Widget centerContent() {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imageCenter(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'SMAGA APPS',
              style: blueTextStyleInter.copyWith(
                fontWeight: bold,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          //warna dasar splash
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          //content
          centerContent(),
        ],
      ),
    );
  }
}
