part of 'pages.dart';

class AddDataPage extends StatefulWidget {
  final AddData addData;

  AddDataPage(this.addData);

  @override
  _AddDataPageState createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  CrudMethods crudMethods = new CrudMethods();

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController genderController = TextEditingController();
    TextEditingController phoneNumController = TextEditingController();
    bool isLoading = false;

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
                                    "Input Data Siswa",
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
                                child: Text(
                                  "Fullname",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.black)),
                                child: TextField(
                                  controller: nameController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: GoogleFonts.poppins(
                                          color: "8D92A3".toColor()),
                                      hintText: 'Type your fullname'),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(top: 6, bottom: 6),
                                child: Text(
                                  "Address",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.black)),
                                child: TextField(
                                  controller: addressController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: GoogleFonts.poppins(
                                          color: "8D92A3".toColor()),
                                      hintText: 'Type your address'),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(top: 6, bottom: 6),
                                child: Text(
                                  "Gender",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.black)),
                                child: TextField(
                                  controller: genderController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: GoogleFonts.poppins(
                                          color: "8D92A3".toColor()),
                                      hintText: 'ex: Male / Female'),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(top: 6, bottom: 6),
                                child: Text(
                                  "Phone Number",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.black)),
                                child: TextField(
                                  controller: phoneNumController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: GoogleFonts.poppins(
                                          color: "8D92A3".toColor()),
                                      hintText: 'ex: 6281239872635'),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(top: 24),
                                height: 45,
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                child: isLoading
                                    ? SpinKitFadingCircle(
                                        color: Colors.white,
                                      )
                                    : RaisedButton(
                                        onPressed: () {
                                          if (!(nameController.text.trim() != "" &&
                                              addressController.text.trim() !=
                                                  "" &&
                                              genderController.text.trim() !=
                                                  "" &&
                                              phoneNumController.text.trim() !=
                                                  "")) {
                                            Flushbar(
                                              duration:
                                                  Duration(milliseconds: 1500),
                                              flushbarPosition:
                                                  FlushbarPosition.TOP,
                                              backgroundColor:
                                                  "FF5C83".toColor(),
                                              message:
                                                  "Please fill all the fields",
                                            )..show(context);
                                          } else {
                                            widget.addData.fullName =
                                                nameController.text;
                                            widget.addData.address =
                                                addressController.text;
                                            widget.addData.gender =
                                                genderController.text;
                                            widget.addData.phoneNum =
                                                phoneNumController.text;

                                            Map<String, dynamic> data = {
                                              'name': widget.addData.fullName,
                                              'address': widget.addData.address,
                                              'gender': widget.addData.gender,
                                              'phoneNum':
                                                  widget.addData.phoneNum
                                            };
                                            crudMethods.addData(data);
                                            Flushbar(
                                              duration:
                                                  Duration(milliseconds: 1500),
                                              flushbarPosition:
                                                  FlushbarPosition.TOP,
                                              backgroundColor:
                                                  "3E9D9D".toColor(),
                                              message:
                                                  "Data Berhasil ditambahkan",
                                            )..show(context);
                                          }
                                        },
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        color: "3E9D9D".toColor(),
                                        child: Text(
                                          'Tambah Data',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                              ),
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
