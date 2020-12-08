part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    auth.User firebaseUser = Provider.of<auth.User>(context);

    if (firebaseUser == null) {
      if (!(prevPageEvent is GoToLoginPage)) {
        prevPageEvent = GoToLoginPage();
        context.bloc<PageBloc>().add(GoToLoginPage());
      }
    } else {
      if (!(prevPageEvent is GoToMainPage)) {
        prevPageEvent = GoToMainPage();
        context.bloc<PageBloc>().add(GoToMainPage());
      }
    }

    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnLoginPage)
            ? SignInPage()
            : (pageState is OnAddDataPage)
                ? AddDataPage(pageState.addData)
                : (pageState is OnDataSiswa) ? DataSiswa() : MainPage());
  }
}
