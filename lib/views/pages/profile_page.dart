part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  Widget header() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18,
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.arrow_back_ios),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Profile",
            style: blackTextStyleInter.copyWith(
              fontSize: 20,
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget headerImage() {
    return Center(
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[100]),
              child: const Icon(
                Icons.person,
                size: 50,
                color: kPrimaryColor,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 70, left: 60),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200]),
              child: const Icon(
                Icons.pin_end,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 18, right: 18),
      child: Column(
        children: [
          const InputReadOnly(label: "Nama :", input: "Aziz Alfauzi"),
          const InputReadOnly(label: "Nis :", input: "13012123"),
          const InputReadOnly(
              label: "Tanggal Lahir :", input: "12 Nopember 1998"),
          const InputReadOnly(label: "Kelas :", input: "MIA-05"),
          const SizedBox(
            height: 60,
          ),
          ButtonWidget(
            title: "Logout",
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget buttonLogout() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            headerImage(),
            content(),
            buttonLogout(),
          ],
        ),
      ),
    );
  }
}
