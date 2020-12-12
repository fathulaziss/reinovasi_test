part of 'pages.dart';

class DataSiswa extends StatefulWidget {
  @override
  _DataSiswaState createState() => _DataSiswaState();
}

class _DataSiswaState extends State<DataSiswa> {
  List dataSiswaList = [];

  @override
  void initState() {
    super.initState();
    fetchDatabaseList();
  }

  fetchDatabaseList() async {
    dynamic result = await CrudMethods().getData();

    if (result == null) {
      print('Data siswa tidak tersedia');
    } else {
      setState(() {
        dataSiswaList = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          context.bloc<PageBloc>().add(GoToMainPage());
          return;
        },
        child: Scaffold(
            body: Container(
                child: ListView.builder(
                    itemCount: dataSiswaList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.fromLTRB(24, 26, 24, 10),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.green[200],
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 3,
                                  blurRadius: 15,
                                  color: Colors.black26)
                            ]),
                        child: Container(
                            padding:
                                EdgeInsets.only(left: 14, right: 14, top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name : " + dataSiswaList[index]['name']),
                                Text("Address : " +
                                    dataSiswaList[index]['address']),
                                Text("Birthday : " +
                                    dataSiswaList[index]['date']),
                                Text("Gender : " +
                                    dataSiswaList[index]['gender']),
                                Text("Phone Number : " +
                                    dataSiswaList[index]['phoneNum'])
                              ],
                            )),
                      );
                    }))));
  }
}
