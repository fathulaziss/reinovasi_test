part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController =
        TextEditingController(text: "admin@gmail.com");
    TextEditingController passwordController =
        TextEditingController(text: "12345678");

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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sekolah Dasar Nusantara",
                            style: GoogleFonts.poppins(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Jalan Soekarno Hatta No.25 Kota Blitar",
                            style: GoogleFonts.poppins(
                                color: "8D92A3".toColor(),
                                fontWeight: FontWeight.w300),
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
                              "Email Address",
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
                              controller: emailController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: GoogleFonts.poppins(
                                      color: "8D92A3".toColor()),
                                  hintText: 'Type your email address'),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 6, bottom: 6),
                            child: Text(
                              "Password",
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
                              obscureText: true,
                              controller: passwordController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: GoogleFonts.poppins(
                                      color: "8D92A3".toColor()),
                                  hintText: 'Type your password'),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 24),
                            height: 45,
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: RaisedButton(
                              onPressed: () async {
                                SignInSignUpResult result =
                                    await AuthServices.signIn(
                                        emailController.text,
                                        passwordController.text);

                                if (result.user == null) {
                                  setState(() {
                                    return SignInPage();
                                  });
                                }
                              },
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              color: "3E9D9D".toColor(),
                              child: Text(
                                'Sign In',
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
    );
  }
}
