part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hai, Admin",
                            style: GoogleFonts.poppins(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      color: "FAFAFC".toColor(),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(24, 120, 24, 6),
                      color: Colors.white,
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 26),
                      height: 45,
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: RaisedButton(
                        onPressed: () {
                          context
                              .bloc<PageBloc>()
                              .add(GoToAddDataPage(AddData()));
                        },
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: "3E9D9D".toColor(),
                        child: Text(
                          'Tambah Data',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 26),
                      height: 45,
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: RaisedButton(
                        onPressed: () {
                          context.bloc<PageBloc>().add(GoToDataSiswa());
                        },
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: "3E9D9D".toColor(),
                        child: Text(
                          'Data Siswa',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 26),
                      height: 45,
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: RaisedButton(
                        onPressed: () {
                          AuthServices.signOut();
                        },
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: "FF5C83".toColor(),
                        child: Text(
                          'Sign Out',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
