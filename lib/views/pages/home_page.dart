part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget header() {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 50,
                width: 50,
                child: Image.asset("assets/images/ic_logo.png"),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Dashboard Siswa",
                    style: blueTextStyleInter.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 120,
                width: 100,
                child: Icon(Icons.settings),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget content() {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              ButtonHomeWidget(
                image: "assets/images/ic_scan_home.png",
                title: "Scan",
                onTap: () {},
              ),
              ButtonHomeWidget(
                image: "assets/images/ic_programmer_home.png",
                title: "Profil",
                onTap: () {},
              ),
            ],
          ),
          Row(
            children: [
              ButtonHomeWidget(
                image: "assets/images/ic_calendar_home.png",
                title: "Jadwal",
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/jadwal-page',
                  );
                },
              ),
              ButtonHomeWidget(
                image: "assets/images/ic_book_home.png",
                title: "Riwayat",
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget listDataBerita() {
    return SizedBox(
      height: 450,
      width: double.infinity,
      child: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: mockPengumuman
                  .map(
                    (e) => GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/pengumuman-detail-page',
                            arguments: {
                              "title": e.title,
                              "subtitle": e.subtitle,
                              "img": e.image,
                              "data": e.data,
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                            defaultMargin, 0, defaultMargin, 0),
                        child: Card(
                          child: ListTile(
                            leading: SizedBox(
                              height: 50,
                              width: 60,
                              child: Image.asset(e.image),
                            ),
                            title: Text(e.title),
                            subtitle: Text(e.subtitle),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            content(),
            listDataBerita(),
          ],
        ),
      ),
    );
  }
}
