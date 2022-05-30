part of 'pages.dart';

class JadwalPage extends StatefulWidget {
  const JadwalPage({Key? key}) : super(key: key);

  @override
  State<JadwalPage> createState() => _JadwalPageState();
}

class _JadwalPageState extends State<JadwalPage> {
  Widget header() {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 18, top: 30),
        child: Column(
          children: [
            const Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Jadwal",
              style: blackTextStyleInter.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ButtonJadwalWidget(
                title: "Senin",
                img: "assets/images/ic_mon.png",
                onTap: () {
                  Navigator.pushNamed(context, '/jadwal-detail-page',
                      arguments: {
                        "id": 1,
                        "hari": "Senin",
                        "img": "assets/images/ic_mon.png"
                      });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ButtonJadwalWidget(
                title: "Selasa",
                img: "assets/images/ic_tues.png",
                onTap: () {
                  Navigator.pushNamed(context, '/jadwal-detail-page',
                      arguments: {
                        "id": 2,
                        "hari": "Selasa",
                        "img": "assets/images/ic_tues.png"
                      });
                },
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ButtonJadwalWidget(
                title: "Rabu",
                img: "assets/images/ic_thr.png",
                onTap: () {
                  Navigator.pushNamed(context, '/jadwal-detail-page',
                      arguments: {
                        "id": 3,
                        "hari": "Rabu",
                        "img": "assets/images/ic_thr.png"
                      });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ButtonJadwalWidget(
                title: "Kamis",
                img: "assets/images/ic_wed.png",
                onTap: () {
                  Navigator.pushNamed(context, '/jadwal-detail-page',
                      arguments: {
                        "id": 4,
                        "hari": "Kamis",
                        "img": "assets/images/ic_wed.png"
                      });
                },
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ButtonJadwalWidget(
                title: "Jumat",
                img: "assets/images/ic_fri.png",
                onTap: () {
                  Navigator.pushNamed(context, '/jadwal-detail-page',
                      arguments: {
                        "id": 5,
                        "hari": "Jumat",
                        "img": "assets/images/ic_fri.png"
                      });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ButtonJadwalWidget(
                title: "Sabtu",
                img: "assets/images/ic_sat.png",
                onTap: () {
                  Navigator.pushNamed(context, '/jadwal-detail-page',
                      arguments: {
                        "id": 6,
                        "hari": "Sabtu",
                        "img": "assets/images/ic_sat.png"
                      });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          content(),
        ],
      ),
    ));
  }
}
