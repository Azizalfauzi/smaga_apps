part of 'pages.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({Key? key}) : super(key: key);

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  Widget header() {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: 150,
            child: Image.asset("assets/images/ic_logo.png"),
          ),
          Center(
            child: Text(
              "SMAGA APPS",
              style: blueTextStyleInter.copyWith(fontSize: 26),
            ),
          ),
        ],
      ),
    );
  }

  Widget formData() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 50,
      ),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                hintText: 'Masukan username anda',
                labelText: 'Username',
                labelStyle: TextStyle(color: kPrimaryColor),
                hintStyle: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Jangan menggunakan karakter dan inputan tidak boleh kosong'
                    : null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.key,
                  color: kPrimaryColor,
                ),
                hintText: 'Masukan password anda',
                labelText: 'Password',
                labelStyle: TextStyle(color: kPrimaryColor),
                hintStyle: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null) ? 'Inputan tidak boleh kosong!' : null;
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            header(),
            formData(),
            const SizedBox(
              height: 100,
            ),
            ButtonWidget(
              title: "Login",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MainPage(
                          initialPage: 0,
                        )));
              },
            ),
          ],
        ),
      ),
    );
  }
}
