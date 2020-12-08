part of 'pages.dart';

class DataSiswa extends StatefulWidget {
  @override
  _DataSiswaState createState() => _DataSiswaState();
}

class _DataSiswaState extends State<DataSiswa> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          context.bloc<PageBloc>().add(GoToMainPage());
          return;
        },
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              SafeArea(
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          width: double.infinity,
                          height: 100,
                          color: Colors.white,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  context.bloc<PageBloc>().add(GoToMainPage());
                                  return;
                                },
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  margin: EdgeInsets.only(right: 26),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/back_arrow.png'))),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Data Siswa",
                                    style: GoogleFonts.poppins(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          color: "FAFAFC".toColor(),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.fromLTRB(24, 26, 24, 6),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(bottom: 6),
                                  child: Text("Data Siswa")),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
